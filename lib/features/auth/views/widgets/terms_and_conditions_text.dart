import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/theme/app_colors.dart';
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
          style: context.textStyles.bodyMedium!.copyWith(
            color: AppColors.lightGrey,
            height: 1.4,
          ),
          children: [
            TextSpan(
              text: " Terms & Conditions ",
              style: context.textStyles.bodyMedium!.copyWith(
                color: context.colorScheme.tertiary,
              ),
            ),
            TextSpan(
              text: " and ",
              style: context.textStyles.bodyMedium!.copyWith(
                color: AppColors.lightGrey,
              ),
            ),
            TextSpan(
              text: " PrivacyPolicy.",
              style: context.textStyles.bodyMedium!.copyWith(
                color: context.colorScheme.tertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
