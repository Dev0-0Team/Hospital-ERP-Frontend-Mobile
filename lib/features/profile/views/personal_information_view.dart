import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/custom_app_bar.dart';
import 'package:doctorine/core/widgets/custom_phone_text_field.dart';
import 'package:doctorine/core/widgets/picture_picker.dart';
import 'package:doctorine/core/widgets/primary_button.dart';
import 'package:doctorine/core/widgets/primary_text_field.dart';
import 'package:flutter/material.dart';

class PersonalInformationView extends StatelessWidget {
  const PersonalInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const CustomAppBar(title: "Personal information"),
            const SizedBox(height: 20),
            PicturePicker(
              onPressed: () {},
            ),
            const VerticalSpace(height: 40),
            const PrimaryTextFormField(
              label: "Full name",
              hint: "Enter your full name",
            ),
            const VerticalSpace(height: 25),
            const PrimaryTextFormField(
              label: "Email",
              hint: "Enter your email",
            ),
            const VerticalSpace(height: 25),
            const PrimaryTextFormField(
              label: "Password",
              hint: "Enter your password",
              isPassword: true,
            ),
            const VerticalSpace(height: 25),
            const CustomPhoneTextField(
              hint: "Enter your phone number",
            ),
            const VerticalSpace(height: 25),
            Text(
                "When you set up your personal information settings, you should take care to provide accurate information.",
                style: context.textStyles.bodySmall),
            const VerticalSpace(height: 40),
            PrimaryButton(text: "Save", onPressed: () {}),
          ],
        ),
      ),
    ));
  }
}
