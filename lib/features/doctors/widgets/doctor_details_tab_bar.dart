import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/features/doctors/logic/doctor_details_tab_cubit/doctor_details_tab_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorDetailsTabBar extends StatelessWidget {
  const DoctorDetailsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorDetailsTabCubit, int>(
      builder: (context, selectedIndex) {
        return Row(
          children: [
            _buildTab(context, 0, context.l10n.about, selectedIndex == 0),
            _buildTab(context, 1, context.l10n.location, selectedIndex == 1),
            _buildTab(context, 2, context.l10n.reviews, selectedIndex == 2),
          ],
        );
      },
    );
  }

  Widget _buildTab(
      BuildContext context, int index, String label, bool isSelected) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          context.read<DoctorDetailsTabCubit>().changeTab(index);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: isSelected
                  ? context.textStyles.bodyMedium?.copyWith(
                      color: Colors.blue,
                    )
                  : context.textStyles.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
            ),
            const SizedBox(height: 8),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 2.5,
              width: 60,
              decoration: BoxDecoration(
                color: isSelected ? Colors.blue : Colors.transparent,
                borderRadius: BorderRadius.circular(1.25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
