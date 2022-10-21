import 'package:app_find_house/app/routes/app_routes.dart';
import 'package:app_find_house/app/routes/app_views.dart';
import 'package:app_find_house/core/utils/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  DependencyInjection.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.LOGIN,
      getPages: AppViews.views,
    );
  }
}
