import 'package:e_commerce_app/feature/authentication/presentation/bloc/auth_bloc.dart';
import 'package:e_commerce_app/feature/authentication/presentation/bloc/check_box/check_box_bloc.dart';
import 'package:e_commerce_app/feature/authentication/presentation/widget/login_screen_widget.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<AuthBloc>()),
        BlocProvider(create: (context) => CheckBoxBloc()),
      ],
      child: LoginScreenWidget(),
    );
  }
}
