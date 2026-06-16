import 'package:doctorine/core/constants/app_assets.dart';
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageWithTitle extends StatelessWidget {
  const DoctorImageWithTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppAssets.assetsImagesSvgsLogoBackground),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: context.onboardingGradient,
          ),
          child: Image.asset(
            //width: double.infinity,
            AppAssets.assetsImagesOnboardingDoctor,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 20,
          right: 0,
          child: Text(
            "Best Doctor\n Appointment App",
            textAlign: TextAlign.center,
            style: context.textStyles.titleLarge!.copyWith(height: 1.3),
          ),
        ),
      ],
    );
  }
}
