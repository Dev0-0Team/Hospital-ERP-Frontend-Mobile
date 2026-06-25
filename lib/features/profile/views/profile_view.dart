import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/widgets/picture_picker.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColoredBox(
        color: context.colorScheme.primary,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      // ── Blue header with avatar overlapping white card ──
                      SizedBox(
                        height: 250,
                        child: Stack(
                          children: [
                            // White card peeking from bottom (drawn first/underneath)
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(24),
                                  ),
                                ),
                              ),
                            ),

                            // App Bar
                            const Positioned(
                              top: 12,
                              left: 0,
                              right: 0,
                              child: ProfileViewAppBar(),
                            ),

                            // Profile Picture Picker centered on the blue-white boundary
                            Positioned(
                              bottom: 5,
                              left: 0,
                              right: 0,
                              child: PicturePicker(onPressed: () {}),
                            ),
                          ],
                        ),
                      ),

                      // ── White scrollable area ───────────────────────────
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ProfileViewUserInfo(),
                              SizedBox(height: 24),
                              _ProfileTile(
                                icon: Icons.person_outline,
                                label: 'Full Name',
                                value: 'Omar Ahmed',
                              ),
                              _ProfileTile(
                                icon: Icons.email_outlined,
                                label: 'Email',
                                value: 'omarahmed14@gmail.com',
                              ),
                              _ProfileTile(
                                icon: Icons.phone_outlined,
                                label: 'Phone',
                                value: '+20 101 234 5678',
                              ),
                              _ProfileTile(
                                icon: Icons.cake_outlined,
                                label: 'Date of Birth',
                                value: 'Jan 1, 1995',
                              ),
                              _ProfileTile(
                                icon: Icons.location_on_outlined,
                                label: 'Location',
                                value: 'Cairo, Egypt',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ProfileTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _ProfileTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: context.colorScheme.primary.withOpacity(0.08),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: context.colorScheme.primary, size: 20),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(fontSize: 12, color: Color(0xFF94A3B8)),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1E293B),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileViewUserInfo extends StatelessWidget {
  const ProfileViewUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Omar Ahmed',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1E293B),
          ),
        ),
        SizedBox(height: 4),
        Text(
          'omarahmed14@gmail.com',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: Color(0xFF94A3B8)),
        ),
      ],
    );
  }
}

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
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(4),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
          Text(
            'Profile',
            style: context.textStyles.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(4),
              child: Icon(
                Icons.settings_outlined,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
