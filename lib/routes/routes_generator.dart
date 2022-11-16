// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:residencia_ufc/pages/Home/home.dart';
import 'package:residencia_ufc/pages/Login/login.dart';
import 'package:residencia_ufc/routes/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Login:
        return _GeneratePageRoute(widget: Login(), routeName: settings.name!);
      case Routes.Home:
        return _GeneratePageRoute(widget: Home(), routeName: settings.name!);
      default:
        return _GeneratePageRoute(widget: Login(), routeName: settings.name!);
    }
  }
}

class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;
  _GeneratePageRoute({required this.widget, required this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                textDirection: TextDirection.rtl,
                position: Tween<Offset>(
                  begin: Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}
