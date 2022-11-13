import 'package:app_find_house/app/data/models/request/request_reservation_model.dart';
import 'package:app_find_house/app/data/models/response/response_house_model.dart';
import 'package:app_find_house/app/data/models/response/response_reservation_model.dart';
import 'package:app_find_house/app/data/providers/house_provider.dart';
import 'package:get/get.dart';

class HouseRepository {
  final _apiProvider = Get.find<HouseProvider>();

  Future<ResponseHouseModel> getHouses(String token) =>
      _apiProvider.getHouses(token);

  Future<ResponseReservationModel> postReservation({
    required String token,
    required RequestReservationModel requestReservation,
  }) =>
      _apiProvider.postReservation(
        token: token,
        requestReservation: requestReservation,
      );
}
