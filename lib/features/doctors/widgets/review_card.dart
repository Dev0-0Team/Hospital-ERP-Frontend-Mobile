import 'package:doctorine/core/constants/app_assets.dart';
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) => Row(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppAssets.assetsImagesPlaceHolder,
            height: 50,
            width: 50,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.reviewerNamePlaceholder,
                      style: context.textStyles.labelMedium,
                    ),
                    const Spacer(),
                    Text(
                      context.l10n.today,
                      style: context.textStyles.bodyMedium,
                    ),
                  ],
                ),
                Text(
                  "⭐⭐⭐⭐⭐",
                  style: context.textStyles.bodySmall,
                ),
                Text(
                  context.l10n.sampleReviewText,
                  style: context.textStyles.bodyMedium,
                ),
              ],
            ),
          )
        ],
      );
}
