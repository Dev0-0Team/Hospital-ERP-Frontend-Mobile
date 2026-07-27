import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/widgets/build_tab.dart';
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
            BuildTab(
                onTapped: () =>
                    context.read<DoctorDetailsTabCubit>().changeTab(0),
                label: context.l10n.about,
                isSelected: selectedIndex == 0),
            BuildTab(
                onTapped: () =>
                    context.read<DoctorDetailsTabCubit>().changeTab(1),
                label: context.l10n.location,
                isSelected: selectedIndex == 1),
            BuildTab(
                onTapped: () =>
                    context.read<DoctorDetailsTabCubit>().changeTab(2),
                label: context.l10n.reviews,
                isSelected: selectedIndex == 2),
          ],
        );
      },
    );
  }
}
