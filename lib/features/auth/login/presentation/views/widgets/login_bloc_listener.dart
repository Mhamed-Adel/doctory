import 'package:doctors_app/core/helpers/extenstion.dart';
import 'package:doctors_app/core/routing/app_routes.dart';
import 'package:doctors_app/core/routing/routes.dart';
import 'package:doctors_app/features/auth/login/presentation/logic/cubit/login_cubit.dart';
import 'package:doctors_app/features/auth/login/presentation/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) => current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(
        loading: () => showDialog(context: context, 
        builder:(context) => const Center(child: CircularProgressIndicator(),), ),
        success: (data) {
          Navigator.of(context).pop();
          context.navigateToReplacement(Routes.onBoarding);
        },
        failure: (error) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error)));
        } 
        );

      },
      child: const SizedBox.shrink(),
    );
  }
}
