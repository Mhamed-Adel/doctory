import 'package:doctors_app/core/network/api_error_handler.dart';
import 'package:doctors_app/core/network/api_result.dart';
import 'package:doctors_app/core/network/api_service.dart';
import 'package:doctors_app/features/auth/sign_up/data/model/sign_up_request.dart';
import 'package:doctors_app/features/auth/sign_up/data/model/sign_up_response.dart';

class SignUpRepo {
  final ApiService apiService;

  SignUpRepo(this.apiService);

  Future <ApiResult<SignupResponse>> signUp(SignupRequestBody signUpRequestBody) async {
    try {
      var response = await apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    }catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}