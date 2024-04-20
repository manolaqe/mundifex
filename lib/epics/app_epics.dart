import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../actions/app_action.dart';
import '../actions/create_user.dart';
import '../actions/get_current_user.dart';
import '../actions/get_users.dart';
import '../actions/sign_out.dart';
import '../actions/signin_email_password.dart';
import '../api/authentication_api.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics(this.authenticationApi);

  final AuthenticationApi authenticationApi;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, SignInEmailPasswordStart>(_signInEmailPassword).call,
      TypedEpic<AppState, SignOutStart>(_signOutStart).call,
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart).call,
      TypedEpic<AppState, GetUsersStart>(_getUsersStart).call,
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
    ])(actions, store);
  }

  Stream<AppAction> _signInEmailPassword(Stream<SignInEmailPasswordStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignInEmailPasswordStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authenticationApi.signInWithEmailAndPassword(email: action.email, password: action.password))
          .map((AppUser user) => SignInEmailPassword.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignInEmailPassword.error(error, stackTrace))
          .doOnData(action.result);
    });
  }

  Stream<AppAction> _getCurrentUserStart(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetCurrentUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authenticationApi.getCurrentUser())
          .map((AppUser? user) => GetCurrentUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetCurrentUser.error(error, stackTrace));
    });
  }

  Stream<AppAction> _signOutStart(Stream<SignOutStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignOutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authenticationApi.signOut())
          .map((_) => const SignOut.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignOut.error(error, stackTrace));
    });
  }

  Stream<AppAction> _getUsersStart(Stream<GetUsersStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUsersStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authenticationApi.getUsers(action.uids))
          .map((List<AppUser> users) => GetUsers.successful(users))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetUsers.error(error, stackTrace));
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authenticationApi.createUserWithEmailAndPassword(email: action.email, password: action.password))
          .map((AppUser user) => CreateUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace))
          .doOnData(action.result);
    });
  }
}
