
import 'package:doctors_app/core/helpers/regex.dart';
import 'package:doctors_app/core/widgets/app_text_form_field.dart';
import 'package:doctors_app/features/auth/login/presentation/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({
    super.key,
  });

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().loginFormKey,
      child: Column(
        children: [
           AppTextFormField(
            hintText: "Email",
             controller: context.read<LoginCubit>().emailController,
              validator: (val ) { 
                if (val == null || val.isEmpty || !AppRegex.isEmailValid(val) ) {
                  return 'Please enter your email';
                }
                return null;
               },),
          Gap(16.h),
          AppTextFormField(
            hintText: "Password",
            isObscureText: isObscureText,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              icon: const Icon(Icons.remove_red_eye),
            ),
             controller: context.read<LoginCubit>().passwordController,
              validator: (val ) {
                if (val == null || val.isEmpty || !AppRegex.isPasswordValid(val)) {
                  return 'Please enter your password';
                }
                return null;
                },
          ),
        ],
      ),
    );
  }
}
