import 'package:doctorine/core/constants/app_assets.dart';
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PicturePicker extends StatelessWidget {
  const PicturePicker({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildAssetsImage(),
          Positioned(bottom: 0, right: 0, child: _buildEditButton(context)),
        ],
      ),
    );
  }

  IconButton _buildEditButton(BuildContext context) {
    return IconButton.filled(
      splashRadius: 25,
      onPressed: onPressed,
      style: IconButton.styleFrom(
        backgroundColor: context.colorScheme.surface,
        fixedSize: const Size.fromHeight(30),
        shape: CircleBorder(
          side: BorderSide(color: context.colorScheme.outline, width: 2),
        ),
      ),
      icon: FaIcon(
        FontAwesomeIcons.pen,
        size: 16,
        color: context.colorScheme.primary,
      ),
    );
  }

  Image _buildAssetsImage() {
    return Image.asset(
      AppAssets.assetsImagesOnboardingDoctor,
      fit: BoxFit.cover,
      height: 130,
      width: 130,
    );
  }
}
