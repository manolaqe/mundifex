import 'package:redux/redux.dart';

import '../models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
   return combineReducers<AppState>(<Reducer<AppState>>[  ])(state, action);
}

