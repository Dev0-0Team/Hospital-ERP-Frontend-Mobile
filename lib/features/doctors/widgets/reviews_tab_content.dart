import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/features/doctors/widgets/review_card.dart';
import 'package:flutter/material.dart';

class ReviewsTabContent extends StatelessWidget {
  const ReviewsTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 20,
      itemBuilder: (context, index) => const ReviewCard(),
      separatorBuilder: (context, index) => const VerticalSpace(height: 20),
    );
  }
}
