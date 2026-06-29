import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: 130,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: context.colorScheme.outline),
        ),
        child: Text(
          text,
          style: context.textStyles.bodySmall?.copyWith(
            color: context.colorScheme.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
