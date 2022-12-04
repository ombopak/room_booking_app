import 'package:thengoding/config/networking/networking.dart';
import 'package:thengoding/data/model/trip/trips.dart';

class TripsState {
  List<Trip> yourRoomies = [];
  List<Trip> otherMatches = [];

  HttpStateStatus status = HttpStateStatus.initial;

  TripsState init() {
    return TripsState();
  }

  TripsState clone() {
    return TripsState();
  }
}
