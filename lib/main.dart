import 'package:doctors_app/core/di/service_locator.dart';
import 'package:doctors_app/core/routing/app_routes.dart';
import 'package:doctors_app/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(MyApp(appRouter: AppRoutes(),));
}

