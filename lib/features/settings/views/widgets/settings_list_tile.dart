import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

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
        GestureDetector(
          onTap: onPressed,
          child: Row(
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
