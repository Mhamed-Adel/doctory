import 'package:doctors_app/core/theme/text_styles.dart';
import 'package:doctors_app/core/widgets/app_text_form_field.dart';
import 'package:doctors_app/core/widgets/default_button.dart';
import 'package:doctors_app/features/auth/login/presentation/logic/cubit/login_cubit.dart';
import 'package:doctors_app/features/auth/login/presentation/views/widgets/login_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'widgets/donnot_have_account.dart';
import 'widgets/email_and_pass.dart';
import 'widgets/terms_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w,vertical: 30.h),
          child: ListView(
            children: [
              Text(
                "Welcome Back",
                style: TextStyles.font24BlueBold,
              ),
              Gap(8.h),
              Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GreyNormal,),
              Gap(36.h),
              const EmailAndPassword(),
              Gap(25.h),
              Text(
                "Forgot Password?",
                textAlign: TextAlign.end,
                style: TextStyles.font12BlueRegular,
              ),
              Gap(40.h),
              DefaultButton(
                onPressed: () {
                  context.read<LoginCubit>().validateAndLogin();
                },
                text: "Login",
              ),
              Gap(26.h),
              const TermsAndConditionsText(),
              Gap(60.h),
              const DonnotHaveAccount(),
              const LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
