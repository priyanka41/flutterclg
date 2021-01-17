import 'dart:io';

import 'package:dio/dio.dart';
import 'package:sanctum_auth/helpers/BaseException.dart';

class API {
  factory API() => API._internal();
  API._internal();

  final String baseUrl = 'http://192.168.1.68:8000/api';
  var dio = Dio(BaseOptions(headers: {
    HttpHeaders.contentTypeHeader: Headers.jsonContentType,
    HttpHeaders.acceptHeader: Headers.jsonContentType
  }));

  Future get(String url) async {
    try {
      Response response = await dio.get('$baseUrl$url');
      print(response);
      return response.data;
    } catch (e) {
      print(e);
    }
  }

  Future post(String url, dynamic data) async {
    try {
      Response response = await dio.post('$baseUrl$url', data: data);
      print(response.statusCode);
      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        switch (e.response.statusCode) {
          case 422:
            throw CustomException(
                e.response.data['message'], e.response.data['errors']);
            break;
          case 500:
            throw CustomException(e.response.data['message']);
            break;
        }
      } else {
        print(e.request);
        print(e.message);
      }
    }
  }
}
