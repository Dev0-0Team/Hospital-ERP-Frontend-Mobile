import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileViewAppBar extends StatelessWidget {
  const ProfileViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => context.pop(),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: context.colorScheme.onPrimary,
                size: 24,
              ),
            ),
          ),
          Text(
            'Profile',
            style: context.textStyles.titleMedium?.copyWith(
              color: context.colorScheme.onPrimary,
              fontWeight: FontWeight.w700,
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => context.push(AppRoutes.settings),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Icon(
                Icons.settings_outlined,
                color: context.colorScheme.onPrimary,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
