import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/address_data.dart';
import '../../models/app_state.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({super.key, required this.builder});

  final ViewModelBuilder<AddressData?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AddressData?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.addressData;
      },
    );
  }
}
