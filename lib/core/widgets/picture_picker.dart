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

  Widget _buildEditButton(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        shape: BoxShape.circle,
        border: Border.all(color: context.colorScheme.outline, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        splashRadius: 20,
        onPressed: onPressed,
        icon: FaIcon(
          FontAwesomeIcons.pen,
          size: 14,
          color: context.colorScheme.primary,
        ),
      ),
    );
  }

  Widget _buildAssetsImage() {
    return Image.asset(
      AppAssets.assetsImagesPlaceHolder,
      fit: BoxFit.fill,
      height: 150,
      width: 150,
    );
  }
}
