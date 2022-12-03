import 'package:flutter/material.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/data/src/img_string.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Image.asset(ImgString.backdrop),
    ));
  }
}
