import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/router/app_routes.dart';
import 'package:doctorine/core/theme/app_colors.dart';
import 'package:doctorine/features/profile/views/widgets/profile_view_buttons.dart';
import 'package:doctorine/features/profile/views/widgets/profile_view_header.dart';
import 'package:doctorine/features/profile/views/widgets/profile_view_tile.dart';
import 'package:doctorine/features/profile/views/widgets/profile_view_user_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                      width: double.infinity,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          const ProfileViewUserInfo(),
                          const VerticalSpace(height: 35),
                          const ProfileViewButtons(),
                          const VerticalSpace(height: 50),
                          ProfileViewTile(
                            title: "Personal Information",
                            color: AppColors.mainBlue,
                            icon: Icons.credit_card,
                            onTap: () => context.push(
                              AppRoutes.personalInformations,
                            ),
                          ),
                          const VerticalSpace(height: 25),
                          const ProfileViewTile(
                            title: "My Test & Diagnostics",
                            color: AppColors.green,
                            icon: Icons.analytics_outlined,
                          ),
                          const VerticalSpace(height: 25),
                          const ProfileViewTile(
                            title: "Payment",
                            color: AppColors.notificationBadge,
                            icon: CupertinoIcons.money_dollar,
                          ),
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
