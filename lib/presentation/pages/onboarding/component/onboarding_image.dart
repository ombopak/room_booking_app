import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thengoding/presentation/pages/onboarding/onboarding_cubit.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Expanded(
      child: PageView.builder(
        itemCount: cubit.state.onboardingList.length,
        itemBuilder: (context, index) => Image.asset(
          cubit.state.onboardingList[index].image ?? '',
        ),
        onPageChanged: cubit.swipping,
      ),
    );
  }
}
