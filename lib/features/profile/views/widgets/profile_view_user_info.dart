import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:flutter/material.dart';

class ProfileViewUserInfo extends StatelessWidget {
  const ProfileViewUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Omar Ahmed',
          textAlign: TextAlign.center,
          style: context.textStyles.titleSmall,
        ),
        const VerticalSpace(height: 4),
        Text(
          'omarahmed14@gmail.com',
          textAlign: TextAlign.center,
          style: context.textStyles.bodyMedium,
        ),
      ],
    );
  }
}
