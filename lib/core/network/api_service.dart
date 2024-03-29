
import 'package:dio/dio.dart';
import 'package:doctors_app/core/network/api_consts.dart';
import 'package:doctors_app/features/auth/login/data/models/login_response_model.dart';
import 'package:doctors_app/features/auth/sign_up/data/model/sign_up_request.dart';
import 'package:doctors_app/features/auth/sign_up/data/model/sign_up_response.dart';
import 'package:retrofit/http.dart';

import '../../features/auth/login/data/models/login_resquest_model.dart';
part 'api_service.g.dart';


@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {


  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.register)
  Future<SignupResponse> signUp(
    @Body() SignupRequestBody signUpRequestBody,
  );
}