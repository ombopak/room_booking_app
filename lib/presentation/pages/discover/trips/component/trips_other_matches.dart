import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/data/model/trip/trips.dart';
import 'package:thengoding/data/src/img_string.dart';
import 'package:thengoding/presentation/pages/discover/trips/trips_cubit.dart';
import 'package:thengoding/util/util.dart';

class TripsOtherMatches extends StatelessWidget {
  const TripsOtherMatches({Key? key, required this.otherMatches})
      : super(key: key);

  final List<Trip> otherMatches;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);
    return Expanded(
      child: Column(
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

  Widget _roomiesList(BuildContext ctx) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: otherMatches.length,
        itemBuilder: (c, i) => _roomiesItem(ctx, otherMatches[i]),
      ),
    );
  }

  Widget _roomiesItem(BuildContext ctx, Trip trip) {
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
                        trip.name ?? '',
                        style: AppFont.paragraphLargeBold,
                      ),
                      Text('\$${trip.price}', style: AppFont.paragraphSmall),
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
