import 'package:flutter/material.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/util/util.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Forgot password? ',
                style: AppFont.paragraphSmall.copyWith(
                  color: AppColor.ink02,
                ),
              ),
              TextSpan(
                text: ' Get new',
                style: AppFont.paragraphSmallBold,
              ),
            ],
          ),
        ),
        8.0.height,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an account? ',
                style: AppFont.paragraphSmall.copyWith(
                  color: AppColor.ink02,
                ),
              ),
              TextSpan(
                text: ' Create one',
                style: AppFont.paragraphSmallBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
