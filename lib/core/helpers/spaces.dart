import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({required this.height, super.key});
  final double height;
  @override
  Widget build(BuildContext _) => SizedBox(height: height);
}

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({required this.width, super.key});
  final double width;
  @override
  Widget build(BuildContext _) => SizedBox(width: width);
}
