import 'package:doctors_app/features/auth/sign_up/data/model/sign_up_request.dart';
import 'package:doctors_app/features/auth/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctors_app/features/auth/sign_up/presentation/logic/cubit/sign_up_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._repo) : super(const SignUpState.initial());
  final SignUpRepo _repo;
   TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  doSignUpState() async{
    emit(const SignUpState.loading());
    var response =await  _repo.signUp(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text, 
        password: passwordController.text, 
        phone: phoneController.text, 
        passwordConfirmation: passwordConfirmationController.text, 
        gender: 0,
      )
    );
    response.when(
      success: (data) => emit(SignUpState.success(data)),
     failure: (error) => emit(SignUpState.failure(error: error.apiErrorModel.message ?? "error")),);
  }
}
