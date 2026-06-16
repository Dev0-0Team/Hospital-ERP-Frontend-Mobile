import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension NavigationExtension on BuildContext {
  void pushNamed(String route, {Object? extra}) => GoRouter.of(this).push(route, extra: extra);

  void pushReplacementNamed(String route, {Object? extra}) =>
      GoRouter.of(this).pushReplacement(route, extra: extra);

  void navigateAndRemoveUntil(String route, {Object? extra}) => GoRouter.of(this).go(route, extra: extra);

  void pop<T>({T? result}) => GoRouter.of(this).pop(result);
}
