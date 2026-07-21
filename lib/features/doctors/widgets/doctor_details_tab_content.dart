import 'package:doctorine/features/doctors/logic/doctor_details_tab_cubit/doctor_details_tab_cubit.dart';
import 'package:doctorine/features/doctors/widgets/about_tab_content.dart';
import 'package:doctorine/features/doctors/widgets/location_tab_content.dart';
import 'package:doctorine/features/doctors/widgets/reviews_tab_content.dart';
import 'package:doctorine/features/doctors/widgets/s_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorDetailsTabContent extends StatelessWidget {
  const DoctorDetailsTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorDetailsTabCubit, int>(
      builder: (context, selectedIndex) {
        switch (selectedIndex) {
          case 0:
            return const SBox(child: AboutTabContent());
          case 1:
            return const SBox(child: LocationTabContent());
          case 2:
            return const ReviewsTabContent();
          default:
            return const SBox(child: SizedBox.shrink());
        }
      },
    );
  }
}
