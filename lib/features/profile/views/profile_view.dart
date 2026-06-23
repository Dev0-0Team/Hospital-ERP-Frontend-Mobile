import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/widgets/picture_picker.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ProfileHeader(),
          // ── rest of body goes here ──
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        // Blue bar
        Container(
          height: 160,
          color: context.colorScheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const ProfileViewAppBar(),
        ),

        // White card
        Positioned(
          top: 110,
          left: 16,
          right: 16,
          child: Container(
            padding: const EdgeInsets.only(top: 56, bottom: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 16,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const ProfileViewUserInfo(),
          ),
        ),

        // Avatar centered on the card top edge
        Positioned(
          top: 110 - 45, // card top - half avatar height
          child: PicturePicker(
            onPressed: () => debugPrint('pressed'),
          ),
        ),
      ],
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
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1E293B),
          ),
        ),
        SizedBox(height: 4),
        Text(
          'omarahmed14@gmail.com',
          style: TextStyle(fontSize: 13, color: Color(0xFF94A3B8)),
        ),
      ],
    );
  }
}

class ProfileViewAppBar extends StatelessWidget {
  const ProfileViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () => Navigator.maybePop(context),
              child: const Icon(Icons.chevron_left, color: Colors.white, size: 28),
            ),
          ),
          Text(
            'Profile',
            style: context.textStyles.titleMedium?.copyWith(
              color: context.colorScheme.surface,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.settings_outlined, color: Colors.white, size: 24),
            ),
          ),
        ],
      ),
    );
  }
}