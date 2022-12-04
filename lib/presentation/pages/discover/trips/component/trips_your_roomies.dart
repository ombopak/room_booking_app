import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/data/model/trip/trips.dart';
import 'package:thengoding/data/src/img_string.dart';
import 'package:thengoding/presentation/pages/discover/trips/trips_cubit.dart';
import 'package:thengoding/util/util.dart';

class TripsYourRoomies extends StatelessWidget {
  const TripsYourRoomies({Key? key, required this.yourRoomies})
      : super(key: key);
  final List<Trip> yourRoomies;
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _header(),
          cubit.state.status == HttpStateStatus.loading
              ? Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                    ],
                  ),
                )
              : _roomiesList(context),
        ],
      ),
    );
  }

  Widget _roomiesList(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: yourRoomies.length,
        itemBuilder: (c, i) => _roomiesItem(yourRoomies[i]),
      ),
    );
  }

  Widget _roomiesItem(Trip trip) {
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
                Text(trip.name ?? '', style: AppFont.componentMedium),
                Text(
                  trip.location ?? '',
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
              radius: 30.w,
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
        top: AppDimen.h40,
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
