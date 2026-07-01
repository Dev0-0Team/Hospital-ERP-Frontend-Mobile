import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

class ProfileViewTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback? onTap;
  const ProfileViewTile({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.20),
                  borderRadius: BorderRadius.circular(16),
                ),
                child:
                    Icon(icon, color: color.withValues(alpha: 0.7), size: 30),
              ),
              const HorizontalSpace(width: 14),
              Text(
                title,
                style: context.textStyles.bodyMedium?.copyWith(
                  color: context.colorScheme.tertiary,
                ),
              ),
            ],
          ),
          const VerticalSpace(height: 10),
          Container(
            height: 1,
            color: Colors.grey.withValues(alpha: 0.5),
          ),
        ],
      ),
    );
  }
}
