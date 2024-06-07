import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'actions/get_location.dart';
import 'api/authentication_api.dart';
import 'api/geocoding_api.dart';
import 'api/location_api.dart';
import 'api/open_weather_api.dart';
import 'epics/app_epics.dart';
import 'firebase_options.dart';
import 'models/app_state.dart';
import 'presentation/home_page.dart';
import 'presentation/signin_page.dart';
import 'presentation/signup_page.dart';
import 'reducer/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final Client client = Client();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final AuthenticationApi authApi = AuthenticationApi(auth: auth, storage: storage, firestore: firestore);
  final Location location = Location();
  final LocationApi locationApi = LocationApi(location: location);
  final OpenWeatherApi openWeatherApi = OpenWeatherApi(client, '2ede6351d981312c95d45e1b5c51849e');
  final GeocodingApi geocodingApi = GeocodingApi('AIzaSyC0O4BZ4uG0sWqoW5_rfPXEoSQLecXsuVg');
  final AppEpics appEpic = AppEpics(authApi, locationApi, openWeatherApi, geocodingApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpic.call).call,
    ],
  );

  store.dispatch(const GetLocation());

  runApp(ScrollableApp(store: store));
}

class ScrollableApp extends StatelessWidget {
  const ScrollableApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          // '/createUser': (BuildContext context) => const CreateUserPage(),
          '/sign_in': (BuildContext context) => const SignInPage(),
          '/sign_up': (BuildContext context) => const SignUpPage(),
          '/forgot_password': (BuildContext context) => const HomePage(),
          // '/profile': (BuildContext context) => const ProfilePage(),
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