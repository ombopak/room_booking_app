import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/data/src/img_string.dart';
import 'package:thengoding/util/util.dart';

class TripsYourRoomies extends StatelessWidget {
  const TripsYourRoomies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          _header(),
          _roomiesList(),
        ],
      ),
    );
  }

  Widget _roomiesList() {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (c, i) => _roomiesItem(),
      ),
    );
  }

  Widget _roomiesItem() {
    return Container(
      height: 72.h,
      margin: EdgeInsets.only(
          bottom: AppDimen.h16, left: AppDimen.w16, right: AppDimen.w16),
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(AppDimen.w8),
      ),
      child: Row(
        children: [
          _avatar(),
          8.0.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Thengoding', style: AppFont.componentMedium),
                Text(
                  'Indonesia',
                  style: AppFont.componentSmall.copyWith(color: AppColor.ink02),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.more_vert,
          ),
        ],
      ),
    );
  }

  Widget _avatar() {
    return SizedBox(
      height: 56.h,
      width: 56.w,
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 28.w,
              backgroundColor: AppColor.ink03,
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 28.w,
              backgroundColor: AppColor.ink06,
              backgroundImage: const AssetImage(ImgString.avatar),
            ),
          ),
        ],
      ),
    );
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
          Text('Your Roomies', style: AppFont.h3),
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
}
