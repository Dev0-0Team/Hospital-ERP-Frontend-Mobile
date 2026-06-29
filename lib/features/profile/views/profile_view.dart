import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/features/profile/views/widgets/profile_view_header.dart';
import 'package:doctorine/features/profile/views/widgets/profile_view_user_info.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColoredBox(
        color: context.colorScheme.primary,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.heightOf(context),
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  // ── Blue header with avatar overlapping card ──
                  const ProfileViewHeader(),

                  // ── Adaptive scrollable card area ───────────────────────────
                  Expanded(
                    child: Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ProfileViewUserInfo(),
                          VerticalSpace(height: 24),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
