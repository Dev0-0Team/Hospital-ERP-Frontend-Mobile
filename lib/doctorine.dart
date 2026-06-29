import 'package:device_preview/device_preview.dart';
import 'package:doctorine/core/router/app_router.dart';
import 'package:doctorine/core/theme/app_dark_theme.dart';
import 'package:doctorine/core/theme/app_light_theme.dart';
import 'package:doctorine/core/theme/logic/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Doctorine extends StatelessWidget {
  const Doctorine({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp.router(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            themeMode: themeMode,
            theme: AppLightThemes.theme,
            darkTheme: AppDarkTheme.dark,
          );
        },
      ),
    );
  }
}
