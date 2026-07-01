import 'package:doctorine/core/router/app_routes.dart';
import 'package:doctorine/features/auth/views/fill_profile_view.dart';
import 'package:doctorine/features/auth/views/login_view.dart';
import 'package:doctorine/features/auth/views/sign_up_view.dart';
import 'package:doctorine/features/auth/views/forgot_password_view.dart';
import 'package:doctorine/features/home/home_view.dart';
import 'package:doctorine/features/onboarding/ui/onboarding_view.dart';
import 'package:doctorine/features/profile/views/personal_information_view.dart';
import 'package:doctorine/features/root/logic/root_cubit.dart';
import 'package:doctorine/features/root/views/root_view.dart';
import 'package:doctorine/features/settings/views/language_view.dart';
import 'package:doctorine/features/settings/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.root,
    routes: [
      GoRoute(
        path: AppRoutes.root,
        name: AppRoutes.root,
        builder: (context, state) => BlocProvider(
          create: (context) => RootCubit(),
          child: const RootView(),
        ),
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        name: AppRoutes.onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRoutes.signUp,
        name: AppRoutes.signUp,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        name: AppRoutes.forgotPassword,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: AppRoutes.fillProfile,
        name: AppRoutes.fillProfile,
        builder: (context, state) => const FillProfileView(),
      ),
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRoutes.settings,
        name: AppRoutes.settings,
        builder: (context, state) => const SettingsView(),
      ),
      GoRoute(
        path: AppRoutes.languages,
        name: AppRoutes.languages,
        builder: (context, state) => const LanguageView(),
      ),
      GoRoute(
        path: AppRoutes.personalInformations,
        name: AppRoutes.personalInformations,
        builder: (context, state) => const PersonalInformationView(),
      ),
    ],
    errorBuilder: (context, state) =>
        const Scaffold(body: Center(child: Text("this is undefined"))),
  );
}
