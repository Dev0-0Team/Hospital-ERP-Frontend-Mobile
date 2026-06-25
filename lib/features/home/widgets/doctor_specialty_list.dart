import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/features/home/widgets/doctor_specialty_item.dart';
import 'package:flutter/material.dart';

class DoctorSpecialtyList extends StatelessWidget {
  const DoctorSpecialtyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: index == 0
              ? const EdgeInsets.only(left: 18.0)
              : EdgeInsets.zero,
          child: const DoctorSpecialtyItem(),
        ),
        separatorBuilder: (context, index) => const HorizontalSpace(width: 25),
        itemCount: 15,
      ),
    );
  }
}
