import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thengoding/util/util.dart';

import 'component/component.dart';
import 'welcome_done_cubit.dart';

class WelcomeDonePage extends StatelessWidget {
  const WelcomeDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Welcome_doneCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<Welcome_doneCubit>(context);

    return Scaffold(
      body: Column(
        children: [
          const WelcomeImage(),
          16.0.height,
          const WelcomeTitle(),
          16.0.height,
          const WelcomeButton(),
          95.0.height,
        ],
      ),
    );
  }
}
