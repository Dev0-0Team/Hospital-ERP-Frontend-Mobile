import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class RememberMeCheckBoxAndForgotPasswordSection extends StatelessWidget {
  const RememberMeCheckBoxAndForgotPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        Text("Remember me", style: context.textStyles.bodySmall),
        const Spacer(),
        Text(
          "Forgot Password?",
          style: context.textStyles.bodySmall!.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
