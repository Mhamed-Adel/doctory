import 'package:flutter/material.dart';

extension NavigationExt on BuildContext {
  void navigateTo(String route) {
    Navigator.pushNamed(
      this,
      route,
    );
  }

  void navigateToReplacement(String route) {
    Navigator.pushReplacementNamed(
      this,
      route
    );
  }

  void navigateAndRemoveUntil(String route) {
    Navigator.pushNamedAndRemoveUntil(
      this,route, (route) => false
    );
  } 
}