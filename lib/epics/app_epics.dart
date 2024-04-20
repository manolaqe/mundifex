import 'package:redux_epics/redux_epics.dart';

import '../models/app_state.dart';

class AppEpics extends EpicClass<AppState> {
  AppEpics();
  
  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[])(actions, store);
  }
}
