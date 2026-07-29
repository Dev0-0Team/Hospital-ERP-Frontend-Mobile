import 'package:doctorine/core/constants/app_assets.dart';
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/theme/app_colors.dart';
import 'package:doctorine/core/widgets/primary_button.dart';
import 'package:doctorine/core/widgets/secondary_button.dart';
import 'package:flutter/material.dart';

class UpComingAppointment extends StatelessWidget {
  const UpComingAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        spacing: 12,
        children: [
          Row(
            children: [
              Image.asset(
                  height: 75,
                  width: 75,
                  AppAssets.assetsImagesOnboardingDoctor),
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
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.message_outlined,
                  color: Colors.blue,
                ),
              )
            ],
          ),
          Divider(
            color: context.colorScheme.outline,
          ),
          Row(
            spacing: 12,
            children: [
              Expanded(
                  child: SecondaryButton(
                text: "Cancel Appointment",
                boarderColor: AppColors.mainBlue,
                onPressed: () {},
              )),
              Expanded(
                  child: PrimaryButton(
                text: "Reschedule",
                onPressed: () {},
                height: 45,
                textStyle: context.textStyles.labelSmall
                    ?.copyWith(color: AppColors.white),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
