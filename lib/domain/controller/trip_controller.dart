import 'dart:convert';

import 'package:thengoding/config/networking/base_respone.dart';
import 'package:thengoding/data/endpoint/endpoint.dart';
import 'package:thengoding/domain/repository/repository.dart';

import '../../config/networking/networking.dart';

class TripController implements TripRepository {
  final ApiClient _client = ApiClient();
  final HttpState _httpState;

  TripController(this._httpState);
  @override
  Future<BaseResponse> detailTrip(int id) async {
    String url = '${EndPoint.trips}/$id';
    String path = 'GET';
    _httpState.onStartRequest(url, path);
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(url),
    );
    _httpState.onEndRequest(url, path);
    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        _httpState.onSuccessRequest(url, path);
      } else {
        _httpState.onErrorRequest(url, path);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: 'Server Error');
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> getTrips() async {
    String url = EndPoint.trips;
    String path = 'GET';
    _httpState.onStartRequest(url, path);
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(url),
    );
    _httpState.onEndRequest(url, path);
    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        _httpState.onSuccessRequest(url, path);
      } else {
        _httpState.onErrorRequest(url, path);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: 'Server Error');
    }
    return baseResponse;
  }
}
