import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class DoctorSpecialtyItem extends StatelessWidget {
  const DoctorSpecialtyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: context.colorScheme.surface,
          child: Icon(
            Icons.medical_services,
            size: 24,
            color: Colors.red.shade400,
          ),
        ),
        Text(
          "Specialty",
          style: context.textStyles.bodySmall?.copyWith(
            color: context.colorScheme.tertiary,
          ),
        ),
      ],
    );
  }
}
