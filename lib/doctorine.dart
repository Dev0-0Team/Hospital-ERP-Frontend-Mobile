import 'package:device_preview/device_preview.dart';
import 'package:doctorine/core/router/app_router.dart';
import 'package:doctorine/core/theme/app_dark_theme.dart';
import 'package:doctorine/core/theme/app_light_theme.dart';
import 'package:flutter/material.dart';

class Doctorine extends StatelessWidget {
  const Doctorine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      themeMode: ThemeMode.light,
      theme: AppLightThemes.theme,
      darkTheme: AppDarkTheme.dark,
    );
  }
}
