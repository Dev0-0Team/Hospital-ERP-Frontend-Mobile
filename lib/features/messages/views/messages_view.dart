import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Messages Screen",
          style: context.textStyles.displayLarge,
        ),
      ),
    );
  }
}
