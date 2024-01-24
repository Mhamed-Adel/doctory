import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.onPressed, required this.text});
  final void Function()? onPressed;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
     
      style: ButtonStyle(
         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    )
  ),
        minimumSize: MaterialStatePropertyAll(Size(double.infinity, 52.h)),
        backgroundColor:const MaterialStatePropertyAll(AppColors.primaryColor)
      ),
    onPressed: onPressed,
      child:Text(text??"",style: TextStyles.font24WhiteBold,) ,
    );
  }
}