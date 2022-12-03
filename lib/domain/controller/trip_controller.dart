import 'dart:convert';

import 'package:thengoding/config/networking/base_respone.dart';
import 'package:thengoding/data/endpoint/endpoint.dart';
import 'package:thengoding/domain/repository/repository.dart';

import '../../config/networking/networking.dart';

class TripController implements TripRepository {
  final ApiClient _client = ApiClient();
  @override
  Future<BaseResponse> detailTrip(int id) async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse('${EndPoint.trip}/$id'),
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: 'Server Error');
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> listTrip() async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(EndPoint.trip),
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: 'Server Error');
    }
    return baseResponse;
  }
}
