import 'package:doctors_app/core/helpers/extenstion.dart';
import 'package:doctors_app/core/routing/routes.dart';
import 'package:doctors_app/core/theme/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: RichText(text: TextSpan(
        children: [
          TextSpan(text: "Already have an account? ",style: TextStyles.font13DarkBlueMedium),
          TextSpan(text: "login",
          recognizer: TapGestureRecognizer()..onTap = () => context.navigateTo(Routes.login),
          style: TextStyles.font13BlueSemiBold),
        ]
      ),),
    );
  }
}