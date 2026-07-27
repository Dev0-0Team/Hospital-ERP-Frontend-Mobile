import 'package:doctorine/core/widgets/build_tab.dart';
import 'package:flutter/material.dart';

class AppointmentsTabBar extends StatelessWidget {
  const AppointmentsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildTab(onTapped: () {}, label: "Upcoming", isSelected: true),
        BuildTab(onTapped: () {}, label: "Completed", isSelected: false),
        BuildTab(onTapped: () {}, label: "Cancelled", isSelected: false),
      ],
    );
  }
}
