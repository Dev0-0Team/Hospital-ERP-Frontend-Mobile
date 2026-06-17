import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/primary_button.dart';
import 'package:doctorine/core/widgets/primary_text_field.dart';
import 'package:doctorine/features/auth/views/widgets/oauth_widgets.dart';
import 'package:doctorine/features/auth/views/widgets/sign_in_with_message.dart';
import 'package:doctorine/features/auth/views/widgets/bottom_text.dart';
import 'package:doctorine/features/auth/views/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(height: 50),
                Text("Create Account ", style: context.textStyles.titleMedium),
                const VerticalSpace(height: 8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: context.textStyles.bodyMedium,
                ),
                const VerticalSpace(height: 36),
                const PrimaryTextFormField(hint: "Email"),
                const VerticalSpace(height: 16),
                const PrimaryTextFormField(hint: "Password", isPassword: true),
                const VerticalSpace(height: 16),
                const PrimaryTextFormField(hint: "Your number"),
                const VerticalSpace(height: 32),
                PrimaryButton(text: "Create Account", onPressed: () {}),
                const VerticalSpace(height: 46),
                const SignInWithMessage(),
                const VerticalSpace(height: 32),
                const OauthWidgets(),
                const VerticalSpace(height: 32),
                const TermsAndConditionsText(),
                const VerticalSpace(height: 24),
                BottomText(
                  messageText: "Al ready have an account? ",
                  clickableText: "  Sign In.",
                  onTextClicked: () => context.pop(),
                ),
                const VerticalSpace(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
