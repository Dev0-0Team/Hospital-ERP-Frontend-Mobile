import 'package:doctorine/core/widgets/build_tab.dart';
import 'package:doctorine/features/appointment/logic/appointments_tab_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentsTabBar extends StatelessWidget {
  const AppointmentsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentsTabCubit, int>(
      builder: (context, state) {
        return Row(
          children: [
            BuildTab(
                onTapped: () =>
                    context.read<AppointmentsTabCubit>().selectTab(0),
                label: "Upcoming",
                isSelected: state == 0),
            BuildTab(
                onTapped: () =>
                    context.read<AppointmentsTabCubit>().selectTab(1),
                label: "Completed",
                isSelected: state == 1),
            BuildTab(
                onTapped: () =>
                    context.read<AppointmentsTabCubit>().selectTab(2),
                label: "Cancelled",
                isSelected: state == 2),
          ],
        );
      },
    );
  }
}
