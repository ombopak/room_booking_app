import 'package:flutter/material.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/data/src/img_string.dart';
import 'package:thengoding/util/util.dart';

class TripsOtherMatches extends StatelessWidget {
  const TripsOtherMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          _header(),
          _roomiesList(context),
        ],
      ),
    );
  }

  Widget _roomiesList(BuildContext ctx) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (c, i) => _roomiesItem(ctx),
      ),
    );
  }

  Widget _roomiesItem(BuildContext ctx) {
    return Container(
        width: MediaQuery.of(ctx).size.width / 2 - 32,
        margin: EdgeInsets.only(
            bottom: AppDimen.h16, left: AppDimen.w16, top: AppDimen.w24),
        padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
        decoration: BoxDecoration(
          color: AppColor.ink06,
          borderRadius: BorderRadius.circular(AppDimen.w16),
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Image.asset(
                      ImgString.cittaPlants1,
                    ),
                  ),
                  37.0.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'The',
                        style: AppFont.paragraphLargeBold,
                      ),
                      Text('\$500', style: AppFont.paragraphSmall),
                    ],
                  ),
                  20.0.height,
                ],
              ),
            ),
          ],
        ));
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimen.w16,
        right: AppDimen.w16,
        top: AppDimen.h24,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Your Roomies', style: AppFont.h3),
        ],
      ),
    );
  }
}
