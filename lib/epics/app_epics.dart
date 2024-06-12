import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../actions/add_dislike.dart';
import '../actions/add_like.dart';
import '../actions/app_action.dart';
import '../actions/create_comment.dart';
import '../actions/create_post.dart';
import '../actions/create_user.dart';
import '../actions/get_address.dart';
import '../actions/get_air_pollution.dart';
import '../actions/get_current_user.dart';
import '../actions/get_flow_segment_data.dart';
import '../actions/get_forecast_weather.dart';
import '../actions/get_location.dart';
import '../actions/get_posts.dart';
import '../actions/get_users.dart';
import '../actions/get_water_quality.dart';
import '../actions/get_weather.dart';
import '../actions/remove_dislike.dart';
import '../actions/remove_like.dart';
import '../actions/sign_out.dart';
import '../actions/signin_email_password.dart';
import '../actions/signin_facebook.dart';
import '../actions/signin_google.dart';
import '../api/apa_nova_api.dart';
import '../api/firebase_api.dart';
import '../api/geocoding_api.dart';
import '../api/location_api.dart';
import '../api/open_weather_api.dart';
import '../api/tomtom_api.dart';
import '../models/address_data.dart';
import '../models/air_pollution_data.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/comment.dart';
import '../models/current_weather.dart';
import '../models/flow_segment_data.dart';
import '../models/forecast_weather.dart';
import '../models/location_data.dart';
import '../models/post.dart';
import '../models/water_quality_data.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics(this.firebaseApi, this.locationApi, this.openWeatherApi, this.geocodingApi, this.tomtomApi, this.apaNovaApi);

  final FirebaseApi firebaseApi;
  final LocationApi locationApi;
  final OpenWeatherApi openWeatherApi;
  final GeocodingApi geocodingApi;
  final TomtomApi tomtomApi;
  final ApaNovaApi apaNovaApi;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetPostsStart>(_getPostsStart).call,
      TypedEpic<AppState, GetForecastWeatherStart>(_getWeatherForecastStart).call,
      TypedEpic<AppState, GetWaterQualityStart>(_getWaterQualityStart).call,
      TypedEpic<AppState, GetFlowSegmentDataStart>(_getFlowSegmentDataStart).call,
      TypedEpic<AppState, GetAirPollutionStart>(_getAirPollutionStart).call,
      TypedEpic<AppState, GetAddressStart>(_getAddressStart).call,
      TypedEpic<AppState, GetLocationStart>(_getLocationStart).call,
      TypedEpic<AppState, GetWeatherStart>(_getWeatherStart).call,
      TypedEpic<AppState, SignInEmailPasswordStart>(_signInEmailPassword).call,
      TypedEpic<AppState, SignInGoogleStart>(_signInGoogle).call,
      TypedEpic<AppState, SignInFacebookStart>(_signInFacebook).call,
      TypedEpic<AppState, SignOutStart>(_signOutStart).call,
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart).call,
      TypedEpic<AppState, GetUsersStart>(_getUsersStart).call,
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
      TypedEpic<AppState, CreateCommentStart>(_createCommentStart).call,
      TypedEpic<AppState, AddLikeStart>(_addLikeStart).call,
      TypedEpic<AppState, AddDislikeStart>(_addDislikeStart).call,
      TypedEpic<AppState, RemoveLikeStart>(_removeLikeStart).call,
      TypedEpic<AppState, RemoveDislikeStart>(_removeDislikeStart).call,
      TypedEpic<AppState, CreatePostStart>(_createPostStart).call,
    ])(actions, store);
  }

  Stream<AppAction> _signInEmailPassword(Stream<SignInEmailPasswordStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignInEmailPasswordStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.signInWithEmailAndPassword(email: action.email, password: action.password))
          .map((AppUser user) => SignInEmailPassword.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignInEmailPassword.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _getCurrentUserStart(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetCurrentUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.getCurrentUser())
          .map((AppUser? user) => GetCurrentUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetCurrentUser.error(error, stackTrace));
    });
  }

  Stream<AppAction> _signOutStart(Stream<SignOutStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignOutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.signOut())
          .map((_) => const SignOut.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignOut.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getUsersStart(Stream<GetUsersStart> actions, EpicStore<AppState> store) {
    return actions.whereType<GetUsersStart>().switchMap((GetUsersStart action) {
      return FirebaseFirestore.instance
          .collection('users')
          .snapshots()
          .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
        final List<AppUser> users = snapshot.docs
            .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => AppUser.fromJson(doc.data()))
            .toList();
        return GetUsers.successful(users);
      }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetUsers.error(error, stackTrace));
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.createUserWithEmailAndPassword(email: action.email, password: action.password))
          .map((AppUser user) => CreateUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _signInGoogle(Stream<SignInGoogleStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignInGoogleStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.signInWithGoogle())
          .map((AppUser user) => SignInGoogle.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignInGoogle.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _signInFacebook(Stream<SignInFacebookStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignInFacebookStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.signInWithFacebook())
          .map((AppUser user) => SignInFacebook.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignInFacebook.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _getLocationStart(Stream<GetLocationStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetLocationStart event) => locationApi.getLocation())
        .expand((LocationData location) {
      return <AppAction>[
        GetLocation.successful(location),
        const GetWeatherStart(),
        const GetAddressStart(),
        const GetAirPollutionStart(),
        const GetFlowSegmentDataStart(),
        const GetForecastWeatherStart(),
        const GetPostsStart(),
      ];
    }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocation.error(error, stackTrace));
  }

  Stream<AppAction> _getWeatherStart(Stream<GetWeatherStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetWeatherStart action) {
      return Stream<void>.value(null)
          .asyncMap(
              (_) => openWeatherApi.getCurrentWeather(locationData: store.state.locationData!, imperialUnits: false))
          .map((CurrentWeather weather) => GetWeather.successful(weather))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetWeather.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getAddressStart(Stream<GetAddressStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetAddressStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => geocodingApi.getAddress(store.state.locationData!))
          .map((AddressData addressMap) => GetAddress.successful(addressMap))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetAddress.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getAirPollutionStart(Stream<GetAirPollutionStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetAirPollutionStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => openWeatherApi.getAirPollutionData(locationData: store.state.locationData!))
          .map((AirPollutionData airPollutionData) => GetAirPollution.successful(airPollutionData))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetAirPollution.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getFlowSegmentDataStart(Stream<GetFlowSegmentDataStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetFlowSegmentDataStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => tomtomApi.getFlowSegmentData(store.state.locationData!))
          .map((FlowSegmentData flowSegmentData) => GetFlowSegmentData.successful(flowSegmentData))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetFlowSegmentData.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getWaterQualityStart(Stream<GetWaterQualityStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetWaterQualityStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => apaNovaApi.getWaterQualityData())
          .map((List<WaterQualityData> waterQualityData) => GetWaterQuality.successful(waterQualityData))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetWaterQuality.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getWeatherForecastStart(Stream<GetForecastWeatherStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetForecastWeatherStart action) {
      return Stream<void>.value(null)
          .asyncMap(
              (_) => openWeatherApi.getForecastWeather(locationData: store.state.locationData!, imperialUnits: false))
          .map((ForecastWeather forecastWeather) => GetForecastWeather.successful(forecastWeather))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetForecastWeather.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getPostsStart(Stream<GetPostsStart> actions, EpicStore<AppState> store) {
    return actions.whereType<GetPostsStart>().switchMap((GetPostsStart action) {
      return FirebaseFirestore.instance
          .collection('posts')
          .snapshots()
          .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
        final List<Post> posts =
            snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Post.fromJson(doc.data())).toList();
        return GetPosts.successful(posts);
      }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetPosts.error(error, stackTrace));
    });
  }

  Stream<AppAction> _createCommentStart(Stream<CreateCommentStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateCommentStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.createComment(
              postId: store.state.selectedPostId!, userId: store.state.user!.userId, value: action.value))
          .map((Comment comment) => CreateComment.successful(comment))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateComment.error(error, stackTrace));
    });
  }

  Stream<AppAction> _createPostStart(Stream<CreatePostStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreatePostStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.createPost(
              images: action.photoUrls,
              description: action.description,
              userId: store.state.user!.userId,
              location: store.state.locationData!))
          .map((Post post) => CreatePost.successful(post))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreatePost.error(error, stackTrace));
    });
  }

  Stream<AppAction> _addLikeStart(Stream<AddLikeStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddLikeStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.addLike(postId: action.selectedPostId, userId: store.state.user!.userId))
          .map((Post post) => AddLike.successful(post))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => AddLike.error(error, stackTrace));
    });
  }

  Stream<AppAction> _addDislikeStart(Stream<AddDislikeStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddDislikeStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.addDislike(postId: action.selectedPostId, userId: store.state.user!.userId))
          .map((Post post) => AddDislike.successful(post))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => AddDislike.error(error, stackTrace));
    });
  }

  Stream<AppAction> _removeDislikeStart(Stream<RemoveDislikeStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RemoveDislikeStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.removeDislike(postId: action.selectedPostId, userId: store.state.user!.userId))
          .map((Post post) => RemoveDislike.successful(post))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => RemoveDislike.error(error, stackTrace));
    });
  }

  Stream<AppAction> _removeLikeStart(Stream<RemoveLikeStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RemoveLikeStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firebaseApi.removeLike(postId: action.selectedPostId, userId: store.state.user!.userId))
          .map((Post post) => RemoveLike.successful(post))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => RemoveLike.error(error, stackTrace));
    });
  }
}
