

import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

class LocationTabContent extends StatelessWidget {
  const LocationTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VerticalSpace(height: 8),
        Text(
          context.l10n.comingSoon,
          style: context.textStyles.bodyMedium,
        ),
      ],
    );
  }
}
