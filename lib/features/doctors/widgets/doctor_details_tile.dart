
import 'package:doctorine/core/constants/app_assets.dart';
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

class DoctorDetailsTile extends StatelessWidget {
  const DoctorDetailsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        _buildDoctorImage(),
        _buildDoctorInfo(context),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.message_outlined,
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}

Column _buildDoctorInfo(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(context.l10n.doctorDetailsName, style: context.textStyles.displayMedium),
      const VerticalSpace(height: 4),
      Text(
        context.l10n.doctorDetailsHospital,
        style: context.textStyles.bodySmall,
      ),
      const VerticalSpace(height: 12),
      Text(context.l10n.doctorReviewsPlaceholder("200"),
          style: context.textStyles.bodySmall),
    ],
  );
}

ClipRRect _buildDoctorImage() {
  return const ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    child: Image(
      image: AssetImage(AppAssets.assetsImagesOnboardingDoctor),
      width: 80,
      height: 80,
      fit: BoxFit.fill,
    ),
  );
}
