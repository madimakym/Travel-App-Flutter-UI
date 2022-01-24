import 'package:flutter/material.dart';

class CustomTransition extends PageRouteBuilder {
  final Widget widget;
  CustomTransition({required this.widget})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return  FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: const Duration(milliseconds: 500));
}

class FadeTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  FadeTransitionRoute({required this.widget})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: const Duration(milliseconds: 200));
}
