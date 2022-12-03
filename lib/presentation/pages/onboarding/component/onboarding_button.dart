import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thengoding/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:thengoding/presentation/widget/primary_button.dart';
import 'package:thengoding/presentation/widget/secondary_button.dart';
import 'package:thengoding/util/util.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryButton(
          text: 'Skip',
          onPressed: cubit.skip,
          width: 100,
        ),
        16.0.width,
        PrimaryButton(
          onPressed: cubit.next,
          text: 'Next',
          width: 100,
        ),
      ],
    );
  }
}
