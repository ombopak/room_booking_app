import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:thengoding/presentation/pages/onboarding/onboarding_state.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          cubit.state.onboardingList.length,
          (index) => index == cubit.state.currentIndex
              ? _activeIndicator(index)
              : _inactiveIndicator(index),
        ),
      );
    });
  }

  Widget _activeIndicator(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
      width: 16,
      height: 6,
      decoration: BoxDecoration(
        color: AppColor.accentPink,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _inactiveIndicator(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: AppColor.ink03,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
