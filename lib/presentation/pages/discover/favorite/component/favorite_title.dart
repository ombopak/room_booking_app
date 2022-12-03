import 'package:flutter/material.dart';
import 'package:thengoding/config/config.dart';

class FavoriteTitle extends StatelessWidget {
  const FavoriteTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _header();
  }
}

Widget _header() {
  return Padding(
    padding: EdgeInsets.only(
      left: AppDimen.w16,
      right: AppDimen.w16,
      top: AppDimen.h60,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text('Favorites', style: AppFont.h3),
        Expanded(
          child: SizedBox(),
        ),
        IconButton(
          icon: Icon(Icons.search, color: AppColor.ink02),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.star, color: AppColor.ink02),
          onPressed: () {},
        ),
      ],
    ),
  );
}
