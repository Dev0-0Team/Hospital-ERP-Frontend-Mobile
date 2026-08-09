import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class ProfileViewButtons extends StatelessWidget {
  const ProfileViewButtons({
    super.key,
    this.onAppointmentsTap,
    this.onMedicalRecordsTap,
  });
  final VoidCallback? onAppointmentsTap;
  final VoidCallback? onMedicalRecordsTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: context.colorScheme.surface,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
      child: Row(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onAppointmentsTap,
            child: Text(
              "My Appointments",
              style: context.textStyles.bodySmall?.copyWith(
                color: context.colorScheme.tertiary,
              ),
            ),
          ),
          Container(
            width: 1.5,
            height: 24,
            color: Colors.grey,
          ),
          GestureDetector(
            onTap: onMedicalRecordsTap,
            child: Text(
              "Medical records",
              style: context.textStyles.bodySmall?.copyWith(
                color: context.colorScheme.tertiary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
