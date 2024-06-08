import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({super.key, required this.builder});

  final ViewModelBuilder<Map<String, String>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, String>?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.addressMap;
      },
    );
  }
}
