import 'package:doctors_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class AppLogoAndName extends StatelessWidget {
  const AppLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svg/app_logo.svg"),
        Text("DocTory",style: TextStyles.font32Bold,)
      ],
    );
  }
}