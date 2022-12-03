import 'package:bloc/bloc.dart';

import 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(SettingState().init());
}
