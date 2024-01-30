import 'package:doctors_app/core/theme/text_styles.dart';
import 'package:doctors_app/core/widgets/app_text_form_field.dart';
import 'package:doctors_app/core/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'widgets/already_have_account_text.dart';
import 'widgets/terms_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(24.0.h),
          child: ListView(
            children: [
             Text("Welcome Back",style: TextStyles.font24BlueBold,),
             Gap(8.h),
             Text("We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
             style: TextStyles.font14GreyNormal),
             Gap(36.h),
             const AppTextFormField(hintText: "Email"),
             Gap(16.h),
              AppTextFormField(hintText: "Password",
             isObscureText: true,
             suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye))),
             
             Gap(25.h),
             Text("Forgot Password?",
             textAlign: TextAlign.end,
             style: TextStyles.font12BlueRegular,),
             Gap(40.h),
             DefaultButton(
               onPressed: () {},
               text: "Login",
             ),
             Gap(16.h),
             const TermsAndConditionsText(),
             Gap(24.h),
             const AlreadyHaveAccount(),
            ],
          ),
        ),
      ),
    );
  }
}