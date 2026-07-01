
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/context_extension.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                border:
                    Border.all(color: context.colorScheme.surface, width: 1),
                borderRadius: BorderRadius.circular(15),
                shape: BoxShape.rectangle),
            child: Center(
              child: GestureDetector(
                onTap: () => context.pop(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: context.colorScheme.secondary,
                ),
              ),
            ),
          ),
          const Spacer(),
          Text(
            title,
            style: context.textStyles.labelLarge,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
