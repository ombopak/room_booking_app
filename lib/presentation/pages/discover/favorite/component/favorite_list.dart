import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/util/util.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (c, i) => _listItem(),
      ),
    );
  }

  Widget _listItem() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: AppDimen.w16),
        height: 76.0.h,
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(AppDimen.w8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Red Doors', style: AppFont.paragraphSmall),
                        8.0.height,
                        Text('France, Paris', style: AppFont.paragraphSmall),
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.ink01,
                  size: 12.sp,
                ),
              ],
            ),
          ),
        ));
  }
}
