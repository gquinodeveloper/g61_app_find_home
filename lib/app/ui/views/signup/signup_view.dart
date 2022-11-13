import 'package:app_find_house/app/ui/components/templates/custom_scaffold.dart';
import 'package:app_find_house/app/ui/views/signup/signup_controller.dart';
import 'package:app_find_house/app/ui/views/signup/widgets/content.dart';
import 'package:app_find_house/app/ui/views/signup/widgets/header.dart';
import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) => CustomScaffold(
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Header(),
              Content(),
            ],
          ),
        ),
      ),
    );
  }
}
