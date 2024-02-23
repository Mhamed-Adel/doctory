import 'package:doctors_app/core/helpers/extenstion.dart';
import 'package:doctors_app/core/routing/routes.dart';
import 'package:doctors_app/core/theme/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DonnotHaveAccount extends StatelessWidget {
  const DonnotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: RichText(text: TextSpan(
        children: [
          TextSpan(text: "Don't have an account yet? ",style: TextStyles.font13DarkBlueMedium),
          TextSpan(text: "Sign up",
          recognizer: TapGestureRecognizer()..onTap = () => context.navigateToReplacement(Routes.signUp),
          style: TextStyles.font13BlueSemiBold),
        ]
      ),),
    );
  }
}