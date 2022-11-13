import 'package:app_find_house/app/ui/components/templates/custom_scaffold.dart';
import 'package:app_find_house/app/ui/views/login/login_controller.dart';
import 'package:app_find_house/app/ui/views/login/widgets/content.dart';
import 'package:app_find_house/app/ui/views/login/widgets/header.dart';
import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (ss) => CustomScaffold(
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
              child: Column(
                children: const [
                  Header(),
                  Content(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
