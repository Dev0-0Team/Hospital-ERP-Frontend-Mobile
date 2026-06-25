import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi, Omar!", style: context.textStyles.displayLarge),
              Text(
                "How Are you Today?",
                style: context.textStyles.bodySmall?.copyWith(height: 1.1),
              ),
            ],
          ),
          _buildNotificationIcon(context),
        ],
      ),
    );
  }

  CircleAvatar _buildNotificationIcon(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: context.colorScheme.surface,
      child: Badge(
        backgroundColor: context.colorScheme.scrim,
        largeSize: 16,
        smallSize: 10,
        child: FaIcon(
          FontAwesomeIcons.bell,
          size: 24,
          color: context.colorScheme.tertiary,
        ),
      ),
    );
  }
}
