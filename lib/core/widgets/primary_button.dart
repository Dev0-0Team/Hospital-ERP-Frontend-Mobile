import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.textStyle,
      this.height});

  final String text;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height ?? 56,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: textStyle,
          )),
    );
  }
}
