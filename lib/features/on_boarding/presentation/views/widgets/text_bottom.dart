import 'package:doctors_app/core/helpers/extenstion.dart';
import 'package:doctors_app/core/routing/routes.dart';
import 'package:doctors_app/core/theme/text_styles.dart';
import 'package:doctors_app/core/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextAndBottomButton extends StatelessWidget {
  const TextAndBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.,",
        style: TextStyles.font14GreyNormal,
        textAlign: TextAlign.center,
        ),
        SizedBox(height: 32.h,),  
        DefaultButton(
          onPressed: () {
            context.navigateToReplacement(Routes.login);
          },
          text: "Get Started",
        )
      ],
    );
  }
}