import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/router/app_routes.dart';
import 'package:doctorine/core/widgets/app_logo_and_name.dart';
import 'package:doctorine/core/widgets/primary_button.dart';
import 'package:doctorine/features/onboarding/ui/widgets/doctor_image_with_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 35, left: 20, right: 20),
        child: PrimaryButton(
          text: "Get Started",
          onPressed: () => context.push(AppRoutes.login),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const VerticalSpace(height: 35),
              const AppLogoAndName(),
              const VerticalSpace(height: 40),
              const DoctorImageWithTitle(),
              Text(
                "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                textAlign: TextAlign.center,
                style: context.textStyles.bodySmall,
              ),
              const VerticalSpace(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
