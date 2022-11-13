import 'dart:convert';

import 'package:app_find_house/app/data/models/request/request_reservation_model.dart';
import 'package:app_find_house/app/data/models/response/response_auth_model.dart';
import 'package:app_find_house/app/data/models/response/response_house_model.dart';
import 'package:app_find_house/app/data/repositories/house_repository.dart';
import 'package:app_find_house/app/services/local_storage_service.dart';
import 'package:app_find_house/core/theme/app_colors.dart';
import 'package:app_find_house/core/utils/keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  @override
  void onInit() {
    crtlTextDate = TextEditingController();
    _initialize();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    crtlTextDate.dispose();
    super.onClose();
  }

  //Instances
  final _houseRepository = Get.find<HouseRepository>();
  ResultHouseModel house = ResultHouseModel();
  ResponseAuthModel responseAuthModel = ResponseAuthModel();
  //Variables

  //TextEditingController
  late TextEditingController crtlTextDate;

  //functions
  void _initialize() async {
    house = Get.arguments as ResultHouseModel;

    String value = await LocalStorageService.get(Keys.keyAuthUser);
    if (value.isNotEmpty) {
      responseAuthModel = ResponseAuthModel.fromJson(json.decode(value));
    }
  }

  void saveReservation() async {
    try {
      final response = await _houseRepository.postReservation(
        token: responseAuthModel.requestToken,
        requestReservation: RequestReservationModel(
          idHouse: "${house.idHouse}",
          idUser: "${responseAuthModel.idUser}",
          date: crtlTextDate.text,
          price: "${house.price}",
        ),
      );
      crtlTextDate.clear();
      Get.back();
      Get.snackbar(
        "Estado de registro",
        response.message,
        snackPosition: SnackPosition.TOP,
        backgroundColor: AppColors.cyan,
      );
    } catch (err) {
      print("Error => $err");
    }
  }
}
