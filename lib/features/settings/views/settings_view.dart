import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/context_extension.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/theme/logic/theme_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SettingsViewAppBar(),
            const VerticalSpace(height: 32),
            const SettingsListTile(
              icon: CupertinoIcons.bell,
              title: "Notification",
            ),
            const SettingsListTile(
              icon: CupertinoIcons.question,
              title: "FQA",
            ),
            const SettingsListTile(
              icon: Icons.language,
              title: "Language",
            ),
            BlocBuilder<ThemeCubit, ThemeMode>(
              builder: (context, themeMode) {
                final isDark = themeMode == ThemeMode.dark;
                return SettingsListTile(
                  icon: Icons.dark_mode,
                  title: "Dark Mode",
                  trailing: Switch(
                    value: isDark,
                    onChanged: (value) {
                      context.read<ThemeCubit>().toggleTheme(value);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}

class SettingsListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onPressed;
  final Widget? trailing;
  const SettingsListTile({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: context.colorScheme.tertiary,
            ),
            const HorizontalSpace(width: 14),
            Text(
              title,
              style: context.textStyles.bodyMedium
                  ?.copyWith(color: context.colorScheme.tertiary),
            ),
            const Spacer(),
            trailing ??
                Icon(
                  Icons.arrow_forward_ios,
                  color: context.colorScheme.tertiary,
                  size: 12,
                )
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          height: 1,
          color: context.colorScheme.surface,
        )
      ],
    );
  }
}

class SettingsViewAppBar extends StatelessWidget {
  const SettingsViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                border:
                    Border.all(color: context.colorScheme.surface, width: 1),
                borderRadius: BorderRadius.circular(15),
                shape: BoxShape.rectangle),
            child: Center(
              child: GestureDetector(
                onTap: () => context.pop(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: context.colorScheme.secondary,
                ),
              ),
            ),
          ),
          const Spacer(),
          Text(
            "Settings",
            style: context.textStyles.labelLarge,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
