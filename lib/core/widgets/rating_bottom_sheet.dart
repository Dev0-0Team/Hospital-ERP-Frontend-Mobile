import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/drag_handle_container.dart';
import 'package:doctorine/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class RatingBottomSheet extends StatelessWidget {
  const RatingBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.isDarkMode ? context.colorScheme.surface : Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 12,
        bottom: MediaQuery.of(context).padding.bottom + 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Drag handle
          const DragHandleContainer(),

          Center(
            child: Text(context.l10n.giveRate, style: context.textStyles.titleSmall),
          ),
          const VerticalSpace(height: 12),
          Divider(
              height: 1,
              color: context.colorScheme.outline.withValues(alpha: 0.3)),
          const VerticalSpace(height: 20),

          Text("⭐⭐⭐⭐⭐⭐", style: context.textStyles.labelLarge),
          ////////////////
          const VerticalSpace(height: 12),
          Text(context.l10n.shareFeedbackAboutDoctor,
              style: context.textStyles.labelLarge),
          const VerticalSpace(height: 12),
          const TextField(
            maxLines: 3,
          ),
          const VerticalSpace(height: 28),
          PrimaryButton(
              text: context.l10n.done, onPressed: () => Navigator.of(context).pop()),
          const VerticalSpace(height: 18),
        ],
      ),
    );
  }
}
