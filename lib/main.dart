import 'dart:convert';

import 'package:background_fetch/background_fetch.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'actions/get_location.dart';
import 'actions/get_users.dart';
import 'actions/get_water_quality.dart';
import 'api/apa_nova_api.dart';
import 'api/firebase_api.dart';
import 'api/geocoding_api.dart';
import 'api/location_api.dart';
import 'api/open_weather_api.dart';
import 'api/tomtom_api.dart';
import 'epics/app_epics.dart';
import 'firebase_options.dart';
import 'models/air_pollution_data.dart';
import 'models/app_state.dart';
import 'models/app_user.dart';
import 'models/location_data.dart' as models;
import 'models/post.dart';
import 'presentation/comments_page.dart';
import 'presentation/create_post_page.dart';
import 'presentation/forecast_page.dart';
import 'presentation/home_page.dart';
import 'presentation/profile_page.dart';
import 'presentation/signin_page.dart';
import 'presentation/signup_page.dart';
import 'presentation/utils.dart';
import 'reducer/reducer.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
final Location location = Location();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final Client client = Client();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseApi authApi = FirebaseApi(auth: auth, storage: storage, firestore: firestore);

  final LocationApi locationApi = LocationApi(location: location);
  final OpenWeatherApi openWeatherApi = OpenWeatherApi(client, '2ede6351d981312c95d45e1b5c51849e');
  final GeocodingApi geocodingApi = GeocodingApi('AIzaSyC0O4BZ4uG0sWqoW5_rfPXEoSQLecXsuVg');
  final TomtomApi tomtomApi = TomtomApi('0Sdv7McYR5LpIwUUlxksC2JRfqWINBCX');
  final ApaNovaApi apaNovaApi = ApaNovaApi();
  final AppEpics appEpic = AppEpics(authApi, locationApi, openWeatherApi, geocodingApi, tomtomApi, apaNovaApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(posts: <Post>[], users: <String, AppUser>{}),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpic.call).call,
    ],
  );

  store.dispatch(const GetUsers());
  store.dispatch(const GetLocation());
  store.dispatch(const GetWaterQuality());

  final bool granted = await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
          ?.areNotificationsEnabled() ??
      false;

  if (!granted) {
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }
  runApp(ScrollableApp(store: store));

  BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);
  BackgroundFetch.configure(
    BackgroundFetchConfig(
      minimumFetchInterval: 15,
      stopOnTerminate: false,
      startOnBoot: true,
      enableHeadless: true,
      requiresBatteryNotLow: false,
      requiresCharging: false,
      requiresStorageNotLow: false,
      requiresDeviceIdle: false,
      requiredNetworkType: NetworkType.ANY,
    ),
    _onBackgroundFetch,
    _onBackgroundFetchTimeout,
  );
}

Future<void> _onBackgroundFetch(String taskId) async {
  final LocationApi locationApi = LocationApi(location: location);
  final models.LocationData locationData = await locationApi.getLocation();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? locationDataJsonInitial = prefs.getString('locationData');

  if (locationDataJsonInitial != null) {
    final models.LocationData locationDataInitial =
        models.LocationData.fromJson(jsonDecode(locationDataJsonInitial) as Map<String, dynamic>);

    if (Utils.isLocationInRadius(locationDataInitial, locationData, 100)) {
      final Client client = Client();
      final OpenWeatherApi openWeatherApi = OpenWeatherApi(client, '2ede6351d981312c95d45e1b5c51849e');
      final AirPollutionData airPollutionData = await openWeatherApi.getAirPollutionData(locationData: locationData);

      await showNotification(airPollutionData);
    }
  }

  final String locationDataJson = jsonEncode(locationData.toJson());
  await prefs.setString('locationData', locationDataJson);

  BackgroundFetch.finish(taskId);
}

void _onBackgroundFetchTimeout(String taskId) {
  BackgroundFetch.finish(taskId);
}

Future<void> backgroundFetchHeadlessTask(HeadlessTask task) async {
  if (task.timeout) {
    BackgroundFetch.finish(task.taskId);
    return;
  }

  BackgroundFetch.finish(task.taskId);
}

Future<void> showNotification(AirPollutionData airPollutionData) async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'location_updates_channel',
    'Location Updates',
    importance: Importance.max,
    priority: Priority.high,
    icon: 'notification_icon',
  );
  const NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
    0,
    'AQI level: ${Utils.computeAQI(airPollutionData)}',
    'Click to see data about the pollution levels in your area',
    platformChannelSpecifics,
  );
}

class ScrollableApp extends StatelessWidget {
  const ScrollableApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.dark(primary: Colors.blueGrey),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        routes: <String, WidgetBuilder>{
          // '/createUser': (BuildContext context) => const CreateUserPage(),
          '/sign_in': (BuildContext context) => const SignInPage(),
          '/sign_up': (BuildContext context) => const SignUpPage(),
          '/forgot_password': (BuildContext context) => const HomePage(),
          '/forecast_page': (BuildContext context) => const ForecastPage(),
          '/comments': (BuildContext context) => const CommentsPage(),
          '/create_post': (BuildContext context) => const CreatePostPage(),
          '/profile': (BuildContext context) => const ProfilePage(),
          // '/movie': (BuildContext context) => const MoviePage(),
        },
      ),
    );
  }
}

// model
// api
// actions
// epic
// reducer
// presentation