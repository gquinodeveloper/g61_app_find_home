import 'dart:convert';

import 'package:app_find_house/app/data/models/request/request_auth_model.dart';
import 'package:app_find_house/app/data/repositories/customer_repository.dart';
import 'package:app_find_house/app/routes/app_routes.dart';
import 'package:app_find_house/app/routes/app_views.dart';
import 'package:app_find_house/app/services/local_storage_service.dart';
import 'package:app_find_house/core/utils/keys.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Instances
  final _customerRepository = Get.find<CustomerRepository>();

  //variables
  late String email = "";
  late String password = "";

  //Functions
  void goToSignUp() {
    Get.toNamed(AppRoutes.SIGNUP);
  }

  void doAuth() async {
    try {
      final response = await _customerRepository.postAuth(
        RequestAuthModel(
          email: email,
          password: password,
        ),
      );
      if (response.requestToken.isNotEmpty) {
        await LocalStorageService.set(
          key: Keys.keyUserEmail,
          value: email,
        );
        await LocalStorageService.set(
          key: Keys.keyUserPass,
          value: password,
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
