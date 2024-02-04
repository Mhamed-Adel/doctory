import 'package:dio/dio.dart';
import 'package:doctors_app/core/network/api_error_handler.dart';
import 'package:doctors_app/core/network/api_result.dart';
import 'package:doctors_app/core/network/api_service.dart';
import 'package:doctors_app/core/network/errors_model.dart';

import '../models/login_response_model.dart';
import '../models/login_resquest_model.dart';

 class LoginRepo {
  
  final ApiService apiService;

  LoginRepo({required this.apiService});

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async{
   
  try {
  var response = await apiService.login(loginRequestBody);
  return ApiResult.success(response);
}on DioException  catch (e) {
  return ApiResult.failure(ErrorHandler.handle(e));
}

  }
}