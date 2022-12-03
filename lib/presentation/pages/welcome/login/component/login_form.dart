import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/presentation/pages/welcome/login/login_cubit.dart';
import 'package:thengoding/presentation/widget/widget.dart';
import 'package:thengoding/util/util.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: AppFont.h3,
          ),
          16.0.height,
          AppInputText(
            label: 'Email',
            controller: cubit.state.emailController,
          ),
          16.0.height,
          AppInputText(
            label: 'Password',
            controller: cubit.state.passwordController,
          ),
          16.0.height,
          PrimaryButton(
            onPressed: cubit.login,
            text: 'Login',
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
