import 'package:doctors_app/core/di/service_locator.dart';
import 'package:doctors_app/core/routing/routes.dart';
import 'package:doctors_app/features/auth/login/data/repo/login_repo.dart';
import 'package:doctors_app/features/auth/login/presentation/logic/cubit/login_cubit.dart';
import 'package:doctors_app/features/auth/login/presentation/views/login_screen.dart';
import 'package:doctors_app/features/auth/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctors_app/features/auth/sign_up/presentation/logic/cubit/sign_up_cubit.dart';
import 'package:doctors_app/features/auth/sign_up/presentation/views/sign_up_screen.dart';
import 'package:doctors_app/features/on_boarding/presentation/views/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  Route generateRoute(RouteSettings route) {
    switch (route.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LoginCubit(getIt.get<LoginRepo>()),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) =>  BlocProvider(
            create: (context) => SignUpCubit(getIt.get<SignUpRepo>()),
            child: const SignUpScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
    }
  }
}
