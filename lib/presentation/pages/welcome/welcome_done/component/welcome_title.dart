import 'package:flutter/material.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/util/util.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w32),
      child: Column(
        children: [
          Text(
            'Find Your Roomies',
            style: AppFont.h4,
          ),
          8.0.height,
          Text(
            'Find your roomies and start your journey with them asdasdasdasdasdasdasd',
            style: AppFont.paragraphSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
