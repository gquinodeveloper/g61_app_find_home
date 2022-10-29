import 'dart:convert';

import 'package:app_find_house/app/data/models/request/request_information_model.dart';
import 'package:app_find_house/app/data/models/response/response_auth_model.dart';
import 'package:app_find_house/app/data/models/response/response_information_model.dart';
import 'package:app_find_house/app/data/repositories/customer_repository.dart';
import 'package:app_find_house/app/routes/app_routes.dart';
import 'package:app_find_house/app/services/local_storage_service.dart';
import 'package:app_find_house/core/utils/keys.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    initialize();
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

  ResponseAuthModel responseAuthModel = ResponseAuthModel();
  ResponseInformationModel informationUser = ResponseInformationModel();

  //Variables
  RxString userFullName = RxString("");
  RxString address = RxString("");

  //functions
  void initialize() async {
    String value = await LocalStorageService.get(Keys.keyAuthUser);
    if (value.isNotEmpty) {
      responseAuthModel = ResponseAuthModel.fromJson(json.decode(value));

      informationUser = await _customerRepository.getInformation(
        RequestInformationModel(
          idUser: responseAuthModel.idUser,
          requestToken: responseAuthModel.requestToken,
        ),
      );

      userFullName.value =
          "${informationUser.information?[0].name} ${informationUser.information?[0].lastname}";

      address.value = "${informationUser.information?[0].address}";
    }
  }

  void signOut() async {
    await LocalStorageService.delete(Keys.keyAuthUser);
    Get.offNamed(AppRoutes.LOGIN);
  }
}
