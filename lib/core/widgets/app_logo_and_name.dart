
import 'package:doctorine/core/constants/app_assets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogoAndName extends StatelessWidget {
  const AppLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 20,
      children: [
        SvgPicture.asset(AppAssets.assetsImagesSvgsAppLogo),
        SvgPicture.asset(AppAssets.assetsImagesSvgsDocdoc),
      ],
    );
  }
}
