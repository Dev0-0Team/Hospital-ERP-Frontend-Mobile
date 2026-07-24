import 'package:doctorine/core/Functions/show_bottom_sheet.dart';
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/custom_app_bar.dart';
import 'package:doctorine/core/widgets/custom_floating_action_button.dart';
import 'package:doctorine/core/widgets/primary_button.dart';
import 'package:doctorine/core/widgets/rating_bottom_sheet.dart';
import 'package:doctorine/features/doctors/logic/doctor_details_tab_cubit/doctor_details_tab_cubit.dart';
import 'package:doctorine/features/doctors/widgets/doctor_details_tab_bar.dart';
import 'package:doctorine/features/doctors/widgets/doctor_details_tab_content.dart';
import 'package:doctorine/features/doctors/widgets/doctor_details_tile.dart';
import 'package:doctorine/features/doctors/widgets/s_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            const SliverVerticalSpace(height: 25),
            SBox(
              child: CustomAppBar(
                title: context.l10n.doctorDetails,
                trailing: const Icon(Icons.more_horiz),
                trailingPadding: 0,
              ),
            ),
            const SliverVerticalSpace(height: 24),
            const SBox(child: DoctorDetailsTile()),
            const SliverVerticalSpace(height: 24),
            const SBox(child: DoctorDetailsTabBar()),
            const SliverVerticalSpace(height: 24),
            const DoctorDetailsTabContent(),
            const SliverVerticalSpace(height: 25)
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 12, left: 12),
        child: PrimaryButton(
          text: context.l10n.makeAnAppointment,
          onPressed: () {},
        ),
      ),
      floatingActionButton: BlocBuilder<DoctorDetailsTabCubit, int>(
        builder: (context, state) => state == 2
            ? CustomFloatingActionButton(
                onPressed: () => showAppBottomSheet(
                    context: context, bottomSheet: const RatingBottomSheet()),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
