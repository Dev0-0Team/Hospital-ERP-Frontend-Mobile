import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/text_title_with_text_button.dart';
import 'package:doctorine/features/home/widgets/doctor_blue_container.dart';
import 'package:doctorine/features/home/widgets/doctor_specialty_list.dart';
import 'package:doctorine/features/home/widgets/home_view_app_bar.dart';
import 'package:doctorine/features/home/widgets/recommendation_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: HomeViewAppBar()),
          const SliverToBoxAdapter(child: DoctorsBlueContainer()),
          const SliverToBoxAdapter(child: VerticalSpace(height: 24)),
          SliverToBoxAdapter(
            child: TextTitleWithTextButton(
              titleText: "Doctor Specialty",
              buttonText: "See All",
              onPressed: () {},
            ),
          ),
          const SliverToBoxAdapter(child: VerticalSpace(height: 16)),
          const SliverToBoxAdapter(child: DoctorSpecialtyList()),
          const SliverToBoxAdapter(child: VerticalSpace(height: 16)),
          SliverToBoxAdapter(
            child: TextTitleWithTextButton(
              titleText: "Recommendation Doctor",
              buttonText: "See All",
              onPressed: () {},
            ),
          ),
          const SliverToBoxAdapter(child: VerticalSpace(height: 16)),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            sliver: RecommendationList(),
          ),
          const SliverToBoxAdapter(child: VerticalSpace(height: 16)),
        ],
      ),
    );
  }
}
