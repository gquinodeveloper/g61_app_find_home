import 'package:app_find_house/app/data/models/response/response_house_model.dart';
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
}
