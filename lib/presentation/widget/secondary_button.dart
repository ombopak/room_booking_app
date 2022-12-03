import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thengoding/config/config.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    this.type = SecondaryButtonType.type3,
    required this.onPressed,
    required this.text,
    this.width = 78,
  }) : super(key: key);

  final SecondaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == SecondaryButtonType.type1
        ? _type1()
        : type == SecondaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      width: width.w,
      height: 24.h,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink01,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppFont.componentSmall.copyWith(
              color: AppColor.ink06,
            ),
          )),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width.w,
      height: 32.h,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink01,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppFont.componentMediumBold.copyWith(
              color: AppColor.ink06,
            ),
          )),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width.w,
      height: 57.h,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink06,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppFont.componentMediumBold.copyWith(
              color: AppColor.ink01,
            ),
          )),
    );
  }
}

enum SecondaryButtonType { type1, type2, type3 }
