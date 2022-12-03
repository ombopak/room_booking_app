import 'package:flutter/material.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/util/util.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimen.w16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          24.0.height,
          Text(
            'Find The Perfect Roommate',
            style: AppFont.h3,
          ),
          Text(
            'we helve asdokapsokdaopskdpaoskdpoaskdpoaskdopaskdoansf',
            style: AppFont.paragraphMedium,
          ),
        ],
      ),
    );
  }
}
