import 'dart:convert';

import 'package:app_find_house/app/data/models/request/request_auth_model.dart';
import 'package:app_find_house/app/data/repositories/customer_repository.dart';
import 'package:app_find_house/app/routes/app_routes.dart';
import 'package:app_find_house/app/routes/app_views.dart';
import 'package:app_find_house/app/services/local_storage_service.dart';
import 'package:app_find_house/core/utils/keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    crtlTextEmail = TextEditingController();
    crtlTextPassword = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    crtlTextEmail.dispose();
    crtlTextPassword.dispose();
    super.onClose();
  }

  //Instances
  final _customerRepository = Get.find<CustomerRepository>();

  //variables
  late String email = "";
  late String password = "";

  //TextEditingController
  late TextEditingController crtlTextEmail;
  late TextEditingController crtlTextPassword;

  //Functions
  void goToSignUp() {
    Get.toNamed(AppRoutes.SIGNUP);
  }

  void doAuth() async {
    try {
      final response = await _customerRepository.postAuth(
        RequestAuthModel(
          email: crtlTextEmail.text,
          password: crtlTextPassword.text,
        ),
      );
      if (response.requestToken.isNotEmpty) {
        await LocalStorageService.set(
            key: Keys.keyUserEmail, value: crtlTextEmail.text //email,
            );
        await LocalStorageService.set(
          key: Keys.keyUserPass,
          value: crtlTextPassword.text, //password,
        );
        await LocalStorageService.set(
          key: Keys.keyAuthUser,
          value: json.encode(
            response.toJson(),
          ),
        );
        Get.offNamed(AppRoutes.HOME);
      }
    } catch (error) {
      print("Error -> $error");
    }
  }
}
