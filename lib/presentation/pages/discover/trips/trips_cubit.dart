import 'package:bloc/bloc.dart';
import 'package:thengoding/config/config.dart';
import 'package:thengoding/domain/controller/controller.dart';

import 'trips_state.dart';

class TripsCubit extends Cubit<TripsState> implements HttpState {
  TripsCubit() : super(TripsState().init());

  late final TripController _tripController = TripController(this);
  void getTrips() async {
    final trips = await _tripController.getTrips();
    emit(state.clone()
      ..yourRoomies = trips.result?.yourRoomies ?? []
      ..otherMatches = trips.result?.otherMatches ?? []);
  }

  @override
  void onEndRequest(String url, String method) {}

  @override
  void onErrorRequest(String url, String method) {
    emit(state.clone()..status = HttpStateStatus.error);
  }

  @override
  void onStartRequest(String url, String method) {
    emit(state.clone()..status = HttpStateStatus.loading);
  }

  @override
  void onSuccessRequest(String url, String method) {}
}
