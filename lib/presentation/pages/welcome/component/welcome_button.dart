import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/presentation/pages/welcome/welcome_cubit.dart';
import 'package:thengoding/presentation/widget/primary_button.dart';
import 'package:thengoding/presentation/widget/secondary_button.dart';
import 'package:thengoding/util/util.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<WelcomeCubit>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
                onPressed: cubit.handleBtnExplore, text: 'Explore'),
          ),
          16.0.width,
          Expanded(
            child: SecondaryButton(
                onPressed: cubit.handleBtnLogin, text: 'Log in'),
          ),
        ],
      ),
    );
  }
}
