// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:residencias_ufc/pages/Home/home.dart';
import 'package:residencias_ufc/pages/Login/login.dart';
import 'package:residencias_ufc/routes/routes.dart';
import 'package:device_preview/device_preview.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.Login,
      // ignore: prefer_const_literals_to_create_immutables
      routes: {
        Routes.Login : (context) => Login(),
        Routes.Home : (context) => Home(),
      },
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Color(0xFF49454F),
        ),
      ),
    );
  }
}