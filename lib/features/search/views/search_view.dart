import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Search Screen",
          style: context.textStyles.displayLarge,
        ),
      ),
    );
  }
}
