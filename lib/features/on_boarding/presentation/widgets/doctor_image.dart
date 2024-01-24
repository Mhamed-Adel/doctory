import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class DoctorImage extends StatelessWidget {
  const DoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration:  BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.white.withOpacity(0.0)],
                  stops: const [0.14, 0.4],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter)),
          child: Image.asset(
            "assets/images/doctor.png",
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor Appointment App",
            textAlign: TextAlign.center,
            style:
                TextStyles.font32Bold.copyWith(color: AppColors.primaryColor),
          ),
        )
      ],
    );
  }
}
