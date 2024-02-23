import 'package:doctors_app/core/theme/text_styles.dart';
import 'package:doctors_app/core/widgets/default_button.dart';
import 'package:doctors_app/features/auth/sign_up/presentation/logic/cubit/sign_up_cubit.dart';
import 'package:doctors_app/features/auth/sign_up/presentation/views/widgets/already_have_account_text.dart';
import 'package:doctors_app/features/auth/sign_up/presentation/views/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
        child: ListView(children: [
          Text(
            'Create Account',
            style: TextStyles.font24BlueBold,
          ),
          Gap(8.h),
          Text(
            'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
            style: TextStyles.font14GrayRegular,
          ),
          Gap(36.h),
          const SignUpForm(),
          Gap(40.h),
          DefaultButton(
            onPressed: () {
              context.read<SignUpCubit>().validateAndSignup();
            },
            text: 'Sign Up',
          ),
          Gap(16.h),
          const AlreadyHaveAccount(),
        ]),
      )),
    );
  }
}
