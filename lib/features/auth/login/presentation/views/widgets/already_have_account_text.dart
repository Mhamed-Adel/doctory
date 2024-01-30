import 'package:doctors_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: RichText(text: TextSpan(
        children: [
          TextSpan(text: "Don't have an account yet? ",style: TextStyles.font13DarkBlueMedium),
          TextSpan(text: "Sign up",style: TextStyles.font13BlueSemiBold),
        ]
      ),),
    );
  }
}