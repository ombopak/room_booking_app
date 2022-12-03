import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thengoding/presentation/pages/welcome/login/component/component.dart';
import 'package:thengoding/util/util.dart';

import 'login_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          50.0.height,
          const LoginImage(),
          48.0.height,
          const LoginForm(),
          16.0.height,
          const LoginFooter(),
        ],
      ),
    ));
  }
}
