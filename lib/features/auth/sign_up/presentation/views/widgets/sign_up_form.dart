import 'package:doctors_app/core/helpers/regex.dart';
import 'package:doctors_app/core/widgets/app_text_form_field.dart';
import 'package:doctors_app/features/auth/sign_up/presentation/logic/cubit/sign_up_cubit.dart';
import 'package:doctors_app/features/auth/sign_up/presentation/views/widgets/pass_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;
  late TextEditingController passwordController;
  bool isUppercase = false;
  bool isLowercase = false;
  bool isNumber = false;
  bool isSpecialCharacter = false;
  bool isLength = false;

  @override
  void initState() {
    passwordController = context.read<SignUpCubit>().passwordController;
    validateListener();
    super.initState();
  }

  void validateListener() {
    passwordController.addListener(() {
      setState(() {
        isLength = AppRegex.hasMinLength(passwordController.text);
        isUppercase = AppRegex.hasUpperCase(passwordController.text);
        isLowercase = AppRegex.hasLowerCase(passwordController.text);
        isNumber = AppRegex.hasNumber(passwordController.text);
        isSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(children: [
        AppTextFormField(
          hintText: 'Name',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid name';
            }
            return null;
          },
          controller: context.read<SignUpCubit>().nameController,
        ),
        Gap(18.h),
        AppTextFormField(
          hintText: 'Phone number',
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isPhoneNumberValid(value)) {
              return 'Please enter a valid phone number';
            }
            return null;
          },
          controller: context.read<SignUpCubit>().phoneController,
        ),
        Gap(18.h),
        AppTextFormField(
          hintText: 'Email',
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return 'Please enter a valid email';
            }
            return null;
          },
          controller: context.read<SignUpCubit>().emailController,
        ),
        Gap(18.h),
        AppTextFormField(
          controller: context.read<SignUpCubit>().passwordController,
          hintText: 'Password',
          isObscureText: isPasswordObscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isPasswordObscureText = !isPasswordObscureText;
              });
            },
            child: Icon(
              isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
            return null;
          },
        ),
        Gap(18.h),
        AppTextFormField(
          controller:
              context.read<SignUpCubit>().passwordConfirmationController,
          hintText: 'Password Confirmation',
          isObscureText: isPasswordConfirmationObscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isPasswordConfirmationObscureText =
                    !isPasswordConfirmationObscureText;
              });
            },
            child: Icon(
              isPasswordConfirmationObscureText
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
            return null;
          },
        ),
        Gap(18.h),
        PasswordValidations(
          hasLowerCase: isLowercase,
          hasUpperCase: isUppercase,
          hasSpecialCharacters: isSpecialCharacter,
          hasNumber: isNumber,
          hasMinLength: isLength,
        ),
      ]),
    );
  }
}
