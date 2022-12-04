import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:thengoding/config/router/router.dart';
import 'package:thengoding/util/helper/helper.dart';

import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState().init());

  void next() {
    if (state.currentIndex < state.onboardingList.length - 1) {
      emit(state.clone()..currentIndex = state.currentIndex + 1);
    } else if (state.currentIndex == state.onboardingList.length - 1) {
      skip();
    }
  }

  void previous() {
    if (state.currentIndex > 0) {
      emit(state.clone()..currentIndex = state.currentIndex - 1);
    }
  }

  void swipping(int index) {
    if (index >= 0 && index < state.onboardingList.length) {
      emit(state.clone()..currentIndex = index);
    }
  }

  void skip() {
    PrefHelper.instance.setFisrtInstall();
    GetIt.I<AppRouter>().replace(WelcomeRoute());
  }
}
