import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thengoding/config/config.dart';

import 'component/component.dart';
import 'welcome_cubit.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WelcomeCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.accentBlue,
        body: Column(
          children: [
            const WelcomeTitle(),
            const WelcomeButton(),
            const WelcomeImage(),
          ],
        ));
  }
}
