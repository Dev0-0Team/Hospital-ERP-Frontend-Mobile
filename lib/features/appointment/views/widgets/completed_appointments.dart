import 'package:doctorine/core/constants/app_assets.dart';
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/theme/app_colors.dart';
import 'package:doctorine/features/appointment/views/widgets/appointment_card.dart';
import 'package:flutter/material.dart';

class CompletedAppointments extends StatelessWidget {
  const CompletedAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return AppointmentCard(
      child: Column(
        spacing: 12,
        children: [
          _buildHeader(context),
          Divider(
            color: context.colorScheme.outline,
          ),
          _buildRowFooter(context),
        ],
      ),
    );
  }

  Row _buildRowFooter(BuildContext context) {
    return Row(
      children: [
        Image.asset(
            height: 82, width: 82, AppAssets.assetsImagesOnboardingDoctor),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.l10n.doctorDetailsName,
                  style: context.textStyles.displayMedium),
              const VerticalSpace(height: 4),
              Text(
                context.l10n.doctorDetailsHospital,
                style: context.textStyles.bodySmall,
              ),
              const VerticalSpace(height: 12),
              Text("Wed, 17 May  |  08.30 AM",
                  style: context.textStyles.bodySmall),
              Text(context.l10n.doctorReviewsPlaceholder("200"),
                  style: context.textStyles.bodySmall),
            ],
          ),
        ),
      ],
    );
  }

  Row _buildHeader(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "appointment done",
              style: context.textStyles.bodySmall?.copyWith(
                color: AppColors.green,
              ),
            ),
            const VerticalSpace(height: 12),
            Text("Wed, 17 May  |  08.30 AM",
                style: context.textStyles.bodySmall),
          ],
        )),
        GestureDetector(onTap: () {}, child: const Icon(Icons.more_vert))
      ],
    );
  }
}
