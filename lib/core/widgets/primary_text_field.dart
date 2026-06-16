import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryTextFormField extends StatefulWidget {
  const PrimaryTextFormField({
    super.key,
    this.isPassword = false,
    this.controller,
    this.label,
    this.hint,
    this.validator,
  });
  final bool isPassword;
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? Function(String?)? validator;

  @override
  State<PrimaryTextFormField> createState() => _PrimaryTextFormFieldState();
}

class _PrimaryTextFormFieldState extends State<PrimaryTextFormField> {
  final isVisible = ValueNotifier<bool>(false);
  @override
  void dispose() {
    isVisible.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isVisible,
      builder: (context, value, w) {
        return TextFormField(
          validator: widget.validator,
          obscureText: widget.isPassword && !value,
          decoration: InputDecoration(
            hintText: widget.hint,
            suffixIcon: widget.isPassword
                ? IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: () => isVisible.value = !isVisible.value,
                    icon: Icon(
                      isVisible.value
                          ? CupertinoIcons.eye
                          : CupertinoIcons.eye_slash,
                    ),
                  )
                : null,
          ),
        );
      },
    );
  }
}
