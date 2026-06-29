
import 'package:doctorine/core/widgets/picture_picker.dart';
import 'package:doctorine/features/profile/views/widgets/profile_view_app_bar.dart';
import 'package:flutter/material.dart';

class ProfileViewHeader extends StatelessWidget {
  const ProfileViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
