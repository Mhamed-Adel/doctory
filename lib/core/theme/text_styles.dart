import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static  TextStyle font32Bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize:  32.sp,
    color: Colors.black
    ); 
   
   static TextStyle font14GreyNormal = TextStyle(
    fontSize: 14.sp,
    color: Colors.grey
    );
    static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.lightGray,
    fontWeight: FontWeightHelper.regular
    );

    static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium
    );
    
      static TextStyle font16WhiteBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white
    );

    static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold
    );

    static TextStyle font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.regular
    );

    static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.gray,
  );
  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.primaryColor,
  );
   static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.darkBlue,
  );
  
   static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.primaryColor,
  );
}