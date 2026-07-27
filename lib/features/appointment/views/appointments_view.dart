import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/custom_app_bar.dart';
import 'package:doctorine/features/appointment/views/widgets/appointments_tab_bar.dart';
import 'package:doctorine/features/doctors/widgets/doctor_details_tile.dart';
import 'package:flutter/material.dart';

class AppointmentsView extends StatelessWidget {
  const AppointmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(
              title: "Appointments",
              trailing: Icon(Icons.search_outlined),
            ),
            const VerticalSpace(height: 12),
            const AppointmentsTabBar(),
            Expanded(
              child: ListView.separated(
                itemCount: 25,
                itemBuilder: (context, index) => const UpComingAppointment(),
                separatorBuilder: (context, index) =>
                    const VerticalSpace(height: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class UpComingAppointment extends StatelessWidget {
  const UpComingAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Row();
  }
}
