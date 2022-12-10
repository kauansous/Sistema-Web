// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, unused_local_variable, unused_element, avoid_print, no_leading_underscores_for_local_identifiers

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:residencias_ufc/database/mongodb.dart';
import 'package:residencias_ufc/theme/theme.dart';
import 'package:device_preview/device_preview.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => MyApp()));
}