import 'package:app_find_house/app/ui/components/logos/custom_logo.dart';
import 'package:app_find_house/app/ui/components/templates/custom_scaffold.dart';
import 'package:app_find_house/app/ui/views/splash/splash_controller.dart';
import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) => const CustomScaffold(
        body: SizedBox(
          width: double.infinity,
          child: CustomLogo(),
        ),
      ),
    );
  }
}
