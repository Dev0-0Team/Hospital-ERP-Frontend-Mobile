import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class SignInWithMessage extends StatelessWidget {
  const SignInWithMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Text("  Or sign in with  ", style: context.textStyles.bodySmall),
        const Expanded(child: Divider()),
      ],
    );
  }
}
