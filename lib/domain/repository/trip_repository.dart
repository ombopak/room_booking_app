import '../../config/networking/networking.dart';

abstract class TripRepository {
  Future<BaseResponse> detailTrip(int id);
  Future<BaseResponse> getTrips();
}
