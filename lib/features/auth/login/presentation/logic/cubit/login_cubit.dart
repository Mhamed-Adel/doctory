
import 'package:doctors_app/features/auth/login/data/models/login_resquest_model.dart';
import 'package:doctors_app/features/auth/login/data/repo/login_repo.dart';
import 'package:doctors_app/features/auth/login/presentation/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.repo) : super(const LoginState.initial());
  final LoginRepo repo;
  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  doLoginState(LoginRequestBody loginRequestBody ) async{
    emit(const LoginState.loading());
    var response = await repo.login(loginRequestBody);
    response.when (success: (data) => emit(LoginState.success(data)), 
    failure: (error) => emit(LoginState.failure(error: error.apiErrorModel.message.toString())));
    }
  
  validateAndLogin() {
    if(loginFormKey.currentState!.validate()){
      doLoginState(LoginRequestBody(email: emailController.text, password: passwordController.text));
    }
  }

}
