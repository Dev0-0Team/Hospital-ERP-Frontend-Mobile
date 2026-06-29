import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText({
    super.key,
    required this.messageText,
    required this.clickableText,
    required this.onTextClicked,
  });
  final String messageText;
  final String clickableText;
  final VoidCallback onTextClicked;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        softWrap: true,
        text: TextSpan(
          text: messageText,
          style: context.textStyles.bodyMedium?.copyWith(
            color: context.colorScheme.secondary,
          ),
          children: [
            WidgetSpan(
              child: InkWell(
                onTap: () => onTextClicked(),
                child: Text(
                  clickableText,
                  style: context.textStyles.labelMedium?.copyWith(
                    color: AppColors.mainBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
