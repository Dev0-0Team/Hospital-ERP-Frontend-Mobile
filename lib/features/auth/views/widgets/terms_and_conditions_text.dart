import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        softWrap: true,
        text: TextSpan(
          text: "By logging, you agree to our ",
          style: context.textStyles.bodyMedium?.copyWith(
            color: context.colorScheme.secondary,
            height: 1.4,
          ),
          children: [
            TextSpan(
              text: " Terms & Conditions ",
              style: context.textStyles.bodyMedium?.copyWith(
                color: context.colorScheme.tertiary,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: " and ",
              style: context.textStyles.bodyMedium?.copyWith(
                color: context.colorScheme.secondary,
              ),
            ),
            TextSpan(
              text: " PrivacyPolicy.",
              style: context.textStyles.bodyMedium?.copyWith(
                color: context.colorScheme.tertiary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
