import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thengoding/presentation/pages/discover/trips/component/trips_other_matches.dart';
import 'package:thengoding/presentation/pages/discover/trips/component/trips_your_roomies.dart';
import 'package:thengoding/presentation/pages/discover/trips/trips_state.dart';

import 'trips_cubit.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TripsCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context)..getTrips();

    return BlocBuilder<TripsCubit, TripsState>(
      builder: (context, state) {
        return Column(
          children: [
            TripsYourRoomies(yourRoomies: cubit.state.yourRoomies),
            TripsOtherMatches(
              otherMatches: state.otherMatches,
            )
          ],
        );
      },
    );
  }
}
