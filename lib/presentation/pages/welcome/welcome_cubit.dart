import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:thengoding/config/router/app_router.gr.dart';

import 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeState().init());

  AppRouter get _appRouter => GetIt.I<AppRouter>();

  void handleBtnExplore() {
    _appRouter.push(DiscoverRoute());
  }

  void handleBtnLogin() {
    _appRouter.replace(LoginRoute());
  }
}
