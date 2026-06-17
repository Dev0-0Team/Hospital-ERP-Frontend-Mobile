import 'package:doctorine/core/router/app_routes.dart';
import 'package:doctorine/features/auth/views/login_view.dart';
import 'package:doctorine/features/auth/views/sign_up_view.dart';
import 'package:doctorine/features/onboarding/ui/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.onboarding,
    routes: [
      GoRoute(
        path: AppRoutes.onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRoutes.signUp,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text("Home Screen"))),
      ),
    ],
    errorBuilder: (context, state) =>
        const Scaffold(body: Center(child: Text("this is undefined"))),
  );
}
