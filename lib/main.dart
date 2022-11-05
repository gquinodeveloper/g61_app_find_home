import 'package:app_find_house/app/routes/app_routes.dart';
import 'package:app_find_house/app/routes/app_views.dart';
import 'package:app_find_house/core/config/app_config.dart';
import 'package:app_find_house/core/network/dio_config.dart';
import 'package:app_find_house/core/utils/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  AppConfig.initialize();
  DioConfig.initialize();
  DependencyInjection.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoutes.SPLASH,
        getPages: AppViews.views,
      ),
    );
  }
}
