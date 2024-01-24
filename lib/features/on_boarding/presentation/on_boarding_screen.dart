import 'package:doctors_app/features/on_boarding/presentation/widgets/doctor_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/app_logo_name.dart';
import 'widgets/text_bottom.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 30.h),
          child: ListView(
            children:  [
            const  AppLogoAndName(),
            SizedBox(height: 20.h,),
            const DoctorImage(),
            const TextAndBottomButton()
            ],
          ),
        ) ,
        
      ),
    );
  }
}