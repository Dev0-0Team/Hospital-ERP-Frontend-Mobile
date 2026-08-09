import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/custom_app_bar.dart';
import 'package:doctorine/features/appointment/logic/appointments_tab_cubit.dart';
import 'package:doctorine/features/appointment/views/widgets/appointments_tab_bar.dart';
import 'package:doctorine/features/appointment/views/widgets/completed_appointments.dart';
import 'package:doctorine/features/appointment/views/widgets/up_coming_appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            const VerticalSpace(height: 20),
            BlocBuilder<AppointmentsTabCubit, int>(
              builder: (context, state) {
                return Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: 25,
                    itemBuilder: (context, index) {
                      if (state == 0) {
                        return const UpComingAppointment();
                      } else if (state == 1) {
                        return const CompletedAppointments();
                      } else {
                        return const SizedBox();
                      }
                    },
                    //  const CompletedAppointments(), // UpComingAppointment(),
                    separatorBuilder: (context, index) =>
                        const VerticalSpace(height: 30),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
