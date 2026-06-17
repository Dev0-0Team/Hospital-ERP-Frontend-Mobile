import 'package:doctorine/core/constants/app_assets.dart';
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OauthWidgets extends StatelessWidget {
  const OauthWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 32,
      children: [
        IconButton.filled(
          onPressed: () {},
          alignment: Alignment.center,
          focusColor: Colors.transparent,
          icon: Image.asset(
            AppAssets.assetsImagesGoogleImage,
            width: 28,
            height: 28,
          ),
        ),
        IconButton.filled(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.facebook,
            size: 28,
            color: AppColors.mainBlue,
          ),
        ),
        IconButton.filled(
          onPressed: () {},
          icon:  FaIcon(
            FontAwesomeIcons.apple,
            size: 28,
            color: context.colorScheme.tertiary,
          ),
        ),
      ],
    );
  }
}
