import 'package:e_commerce_app/core/app/app_dev.dart';
import 'package:e_commerce_app/feature/authentication/presentation/bloc/signup_bloc.dart';
import 'package:e_commerce_app/firebase_options.dart';
import 'package:e_commerce_app/injection_container.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await init();
  runApp(const App());
}
