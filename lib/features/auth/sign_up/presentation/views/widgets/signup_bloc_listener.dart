import 'package:doctors_app/features/auth/sign_up/presentation/logic/cubit/sign_up_cubit.dart';
import 'package:doctors_app/features/auth/sign_up/presentation/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (BuildContext context, state) {
        state.whenOrNull(
          loading: () => showDialog(
            context: context,
            builder: (context) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
          success: (data) => Navigator.pop(context),
          failure: (error) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(error),
            ),
          ),
        );
      },
    );
  }
}
