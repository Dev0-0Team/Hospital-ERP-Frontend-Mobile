import 'package:device_preview/device_preview.dart';
import 'package:doctorine/doctorine.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const Doctorine(),
    ),
  );
 // runApp(const Doctorine());
}