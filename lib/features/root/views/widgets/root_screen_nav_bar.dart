import 'package:doctorine/core/constants/app_assets.dart';
import 'package:doctorine/core/theme/app_colors.dart';
import 'package:doctorine/features/root/logic/root_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RootScreenNavBar extends StatelessWidget {
  const RootScreenNavBar({super.key, required this.activeIndex});
  final int activeIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 15,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: _buildRowIcons(context),
            ),
          ),

          Positioned(top: -20, child: _buildSearchIcon(context)),
        ],
      ),
    );
  }

  Row _buildRowIcons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildNavItem(
            context,
            index: 0,
            activeIndex: activeIndex,
            icon: FontAwesomeIcons.house,
          ),
        ),
        Expanded(
          child: _buildNavItem(
            context,
            index: 1,
            activeIndex: activeIndex,
            icon: FontAwesomeIcons.message,
          ),
        ),

        // Search slot
        const Expanded(child: SizedBox()),

        Expanded(
          child: _buildNavItem(
            context,
            index: 3,
            activeIndex: activeIndex,
            icon: FontAwesomeIcons.calendar,
          ),
        ),
        Expanded(
          child: _buildProfileItem(context, index: 4, activeIndex: activeIndex),
        ),
      ],
    );
  }

  InkWell _buildSearchIcon(BuildContext context) {
    return InkWell(
      onTap: () => context.read<RootCubit>().changeTab(2),
      child: Container(
        width: 62,
        height: 62,
        decoration: BoxDecoration(
          color: AppColors.mainBlue,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: AppColors.mainBlue.withValues(alpha: 0.30),
              blurRadius: 14,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: const Center(
          child: FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 22,
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required int index,
    required int activeIndex,
    required IconData icon,
  }) {
    final isSelected = index == activeIndex;

    return GestureDetector(
      onTap: () => context.read<RootCubit>().changeTab(index),
      child: Center(
        child: FaIcon(
          icon,
          size: 22,
          color: isSelected ? AppColors.mainBlue : const Color(0xFF757575),
        ),
      ),
    );
  }

  Widget _buildProfileItem(
    BuildContext context, {
    required int index,
    required int activeIndex,
  }) {
    final isSelected = index == activeIndex;

    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: () => context.read<RootCubit>().changeTab(index),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? AppColors.mainBlue : Colors.transparent,
                width: 2,
              ),
            ),
            child: const CircleAvatar(
              radius: 13,
              backgroundImage: AssetImage(AppAssets.assetsImagesPlaceHolder),
            ),
          ),
        ),
      ),
    );
  }
}
