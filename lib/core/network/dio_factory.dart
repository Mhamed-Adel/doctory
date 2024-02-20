import 'package:dio/dio.dart';
import 'package:doctors_app/core/network/api_consts.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory{

DioFactory._();

static Dio? _dio;

static Dio getDio() {
  if(_dio == null){
    _dio = Dio();
    _dio!
    ..options.baseUrl = ApiConstants.baseUrl
    ..options.connectTimeout = const Duration(seconds: 60);
    if (kDebugMode) {
      prettyDioLogger();
    }
    return _dio!;
  }else {
    return _dio!;
  }

}

static void prettyDioLogger() {
       _dio?.interceptors.add(
    PrettyDioLogger(
       requestBody: true,
    requestHeader: true,
    responseHeader: true,));
}
}