
import 'package:e_grocery/screens/landing_sreen.dart';
import 'package:e_grocery/screens/web_side/web_main.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.minWidth > 600) {
          return WebMainScreen();
        } else {
          return LandingScreen();
        }
      },
    );
  }
}
