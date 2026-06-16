import 'package:doctorine/core/router/app_router.dart';
import 'package:doctorine/core/theme/app_dark_theme.dart';
import 'package:doctorine/core/theme/app_light_theme.dart';
import 'package:flutter/material.dart';

class Doctorine extends StatelessWidget {
  const Doctorine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: !true ? AppLightThemes.theme : AppDarkTheme.dark,
    );
  }
}
