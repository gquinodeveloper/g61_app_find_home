import 'package:app_find_house/app/data/models/request/request_reservation_model.dart';
import 'package:app_find_house/app/data/models/response/response_house_model.dart';
import 'package:app_find_house/app/data/models/response/response_reservation_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HouseProvider {
  final _dio = Get.find<Dio>();

  Future<ResponseHouseModel> getHouses(String token) async {
    final response = await _dio.get(
      "/api/house/houses/1/6",
      options: Options(
        headers: {
          "auth": token,
        },
      ),
    );

    return ResponseHouseModel.fromJson(response.data);
  }

  Future<ResponseReservationModel> postReservation({
    required String token,
    required RequestReservationModel requestReservation,
  }) async {
    final response = await _dio.post(
      "/api/reservation/register",
      options: Options(
        headers: {
          "auth": token,
        },
      ),
      data: requestReservation.toJson(),
    );
    return ResponseReservationModel.fromJson(response.data);
  }
}
