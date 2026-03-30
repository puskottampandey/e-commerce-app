import 'package:e_commerce_app/feature/authentication/presentation/bloc/auth_bloc.dart';
import 'package:e_commerce_app/feature/authentication/presentation/widget/signup_screen_widget.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthBloc>(),
      child: const SignupScreenWidget(),
    );
    // return SignupScreenWidget();
  }
}
