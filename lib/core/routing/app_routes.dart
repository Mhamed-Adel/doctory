import 'package:doctors_app/core/routing/routes.dart';
import 'package:doctors_app/features/auth/login/presentation/views/login_screen.dart';
import 'package:doctors_app/features/on_boarding/presentation/views/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {

   Route generateRoute(RouteSettings route) {
    switch (route.name) {
      case Routes.onBoarding: 
      return MaterialPageRoute(builder: (_) => const OnBoardingScreen(),);
      
      case Routes.login:
      return  MaterialPageRoute(builder: (_) => const LoginScreen(),);

      default : return MaterialPageRoute(builder: (_) => const OnBoardingScreen(),);  
    }
  }
}