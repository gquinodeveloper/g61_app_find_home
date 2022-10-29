import 'dart:convert';

import 'package:app_find_house/app/data/models/request/request_auth_model.dart';
import 'package:app_find_house/app/data/repositories/customer_repository.dart';
import 'package:app_find_house/app/routes/app_routes.dart';
import 'package:app_find_house/app/services/local_storage_service.dart';
import 'package:app_find_house/core/utils/keys.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 1), () {
      doAuth();
    });
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

  //Functions
  void doAuth() async {
    try {
      String email = await LocalStorageService.get(Keys.keyUserEmail);
      String password = await LocalStorageService.get(Keys.keyUserPass);

      if (email.isNotEmpty && password.isNotEmpty) {
        final response = await _customerRepository.postAuth(
          RequestAuthModel(
            email: email,
            password: password,
          ),
        );
        if (response.requestToken.isNotEmpty) {
          await LocalStorageService.set(
            key: Keys.keyAuthUser,
            value: json.encode(
              response.toJson(),
            ),
          );
          Get.offNamed(AppRoutes.HOME);
        } else {
          Get.offNamed(AppRoutes.LOGIN);
        }
      } else {
        Get.offNamed(AppRoutes.LOGIN);
      }
    } catch (error) {
      print("Error -> $error");
    }
  }
}
