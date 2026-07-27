import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class BuildTab extends StatelessWidget {
  const BuildTab(
      {super.key,
      required this.label,
      required this.onTapped,
      required this.isSelected});
  final String label;
  final VoidCallback onTapped;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTapped,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: isSelected
                  ? context.textStyles.bodyMedium?.copyWith(
                      color: Colors.blue,
                    )
                  : context.textStyles.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
            ),
            const SizedBox(height: 8),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 2.5,
              width: 60,
              decoration: BoxDecoration(
                color: isSelected ? Colors.blue : Colors.transparent,
                borderRadius: BorderRadius.circular(1.25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
