import 'package:bloc/bloc.dart';

import 'discover_state.dart';

class DiscoverCubit extends Cubit<DiscoverState> {
  DiscoverCubit() : super(DiscoverState().init());

  void changeSelectedIndex(int index) {
    emit(state.clone()..selectedIndex = index);
  }
}
