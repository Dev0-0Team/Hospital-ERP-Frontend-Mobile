import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

class AboutTabContent extends StatelessWidget {
  const AboutTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.aboutDoctor,
            style: context.textStyles.labelMedium,
          ),
          const VerticalSpace(height: 8),
          Text(
            context.l10n.aboutDoctorDescription,
            style: context.textStyles.bodyMedium,
          ),
          const VerticalSpace(height: 16),
          Text(
            context.l10n.workingTime,
            style: context.textStyles.labelMedium,
          ),
          const VerticalSpace(height: 8),
          Text(
            context.l10n.workingTimeDetails,
            style: context.textStyles.bodyMedium,
          ),
          const VerticalSpace(height: 16),
          Text(
            context.l10n.str,
            style: context.textStyles.labelMedium,
          ),
          const VerticalSpace(height: 8),
          Text(
            '4726482464',
            style: context.textStyles.bodyMedium,
          ),
        ],
      ),
    );
  }
}
