import 'package:app_find_house/app/ui/views/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  //GetView<SignUpController>
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text("Registrarme"),
        ),
        body: Center(
          child: TextButton(
            onPressed: controller.signUp,
            child: const Text("Registrarme"),
          ),
        ),
      ),
    );
  }
}
