import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/data/src/img_string.dart';
import 'package:thengoding/util/util.dart';

class FavoriteHeader extends StatelessWidget {
  const FavoriteHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppDimen.w16),
      padding: EdgeInsets.all(AppDimen.w8),
      height: 163.0.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0.r),
          bottomRight: Radius.circular(20.0.r),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(ImgString.cittaPlants3),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Italy', style: AppFont.paragraphSmall),
                8.0.height,
                Text('Meet New Roomies and find new adventure',
                    style: AppFont.h4.copyWith(height: 1.1.sp)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
