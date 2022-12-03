import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:thengoding/util/helper/helper.dart';

class ApiClient extends http.BaseClient {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    debugPrint('================================REQUEST=====================');
    if ((PrefHelper.instance.token ?? '').isNotEmpty) {
      request.headers
          .addAll({'Authorization': 'Bearer ${PrefHelper.instance.token}'});
    }

    debugPrint(
        'Request: ${request.method} => ${request.url} \n ${request.headers}');

    return request.send().then((value) {
      debugPrint(
          '=========================RESPONSE=============================');
      debugPrint('Response: ${value.statusCode} => ${value.reasonPhrase}');
      debugPrint(
          '==============================================================');
      return value;
    }).catchError((error) {
      debugPrint('Error: $error');
      return http.StreamedResponse(
          Stream.fromIterable([error.toString().codeUnits]), 500);
    });
  }

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) {
    return super.get(url, headers: headers).then((value) {
      debugPrint(
          '=========================RESPONSE=============================');
      Logger.root.info(value.body);
      debugPrint(
          '==============================================================');
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
      return http.Response(err.toString(), 500);
    });
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, body, Encoding? encoding}) {
    return super
        .post(url, headers: headers, body: body, encoding: encoding)
        .then((value) {
      debugPrint(
          '=========================RESPONSE=============================');
      debugPrint(value.body);
      debugPrint(
          '==============================================================');
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
      return http.Response(err.toString(), 500);
    });
  }
}
