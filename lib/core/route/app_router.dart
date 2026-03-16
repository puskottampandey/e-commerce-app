import 'package:e_commerce_app/core/navigation/navigation_service.dart';
import 'package:e_commerce_app/core/route/route.dart';
import 'package:e_commerce_app/feature/authentication/screen/login_screen.dart';
import 'package:e_commerce_app/feature/authentication/screen/signup_screen.dart';
import 'package:e_commerce_app/feature/startup/screen/onboarding_screen.dart';
import 'package:e_commerce_app/feature/startup/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    navigatorKey: NavigationService.navigatorKey,
    routes: [
      GoRoute(path: Routes.root, builder: (context, state) => SplashScreen()),
      GoRoute(
        path: Routes.onBoardingScreen,
        builder: (context, state) => OnboardingScreen(),
      ),
      GoRoute(
        path: Routes.loginScreen,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: Routes.signupScreen,
        builder: (context, state) => SignupScreen(),
      ),
    ],
  );
}
