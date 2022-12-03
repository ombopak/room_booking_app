import 'package:flutter/material.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/presentation/widget/widget.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: PrimaryButton(
        width: double.infinity,
        onPressed: () {},
        text: 'Let\'s Go!',
      ),
    );
  }
}
