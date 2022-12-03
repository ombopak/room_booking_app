import 'dart:convert';

import 'package:thengoding/config/config.dart';
import 'package:thengoding/data/endpoint/endpoint.dart';
import 'package:thengoding/domain/repository/repository.dart';

class AuthController implements AuthRepository {
  final ApiClient _client = ApiClient();
  final HttpState _httpState;

  AuthController(this._httpState);
  @override
  Future<BaseResponse> forgotPassword(String email) async {
    String method = 'POST';
    String url = EndPoint.forgotPassword;
    _httpState.onStartRequest(url, method);

    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(url),
      body: {
        'email': email,
      },
    );
    _httpState.onEndRequest(url, method);
    if (response.statusCode < 500) {
      _httpState.onSuccessRequest(url, method);
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      _httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: 'Server Error');
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> login(String email, String password) async {
    String method = 'POST';
    String url = EndPoint.login;
    _httpState.onStartRequest(url, method);
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(url),
      body: {
        'email': email,
        'password': password,
      },
    );
    _httpState.onEndRequest(url, method);

    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      _httpState.onErrorRequest(url, method);

      baseResponse = BaseResponse(message: 'Server Error');
    }
    return baseResponse;
  }

  @override
  Future<void> logout() async {
    String method = 'POST';
    String url = EndPoint.logout;
    _httpState.onStartRequest(url, method);
    await _client
        .post(
          Uri.parse(url),
          body: {},
        )
        .then((value) => _httpState.onSuccessRequest(url, method))
        .catchError((e) {
          _httpState.onErrorRequest(url, method);
        });
    _httpState.onEndRequest(url, method);
  }

  @override
  Future<BaseResponse> register(
      String email, String password, String name) async {
    String method = 'POST';
    String url = EndPoint.register;
    _httpState.onStartRequest(url, method);
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(url),
      body: {
        'email': email,
        'password': password,
        'name': name,
      },
    );
    _httpState.onEndRequest(url, method);

    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      _httpState.onErrorRequest(url, method);

      baseResponse = BaseResponse(message: 'Server Error');
    }
    return baseResponse;
  }
}
