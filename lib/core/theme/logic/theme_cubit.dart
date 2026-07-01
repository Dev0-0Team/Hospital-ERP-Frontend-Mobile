import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

  void changeTheme(ThemeMode mode) => emit(mode);

  void toggleTheme() {
    emit(state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
  }

  @override
  ThemeMode fromJson(Map<String, dynamic> json) {
    return ThemeMode.values[json['themeMode'] ?? ThemeMode.light.index];
  }

  @override
  Map<String, dynamic> toJson(ThemeMode state) {
    return {'themeMode': state.index};
  }
}