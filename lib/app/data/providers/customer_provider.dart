import 'package:app_find_house/app/data/models/request/request_auth_model.dart';
import 'package:app_find_house/app/data/models/request/request_information_model.dart';
import 'package:app_find_house/app/data/models/response/response_auth_model.dart';
import 'package:app_find_house/app/data/models/response/response_information_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class CustomerProvider {
  final _dio = Get.find<Dio>();
  Future<ResponseAuthModel> postAuth(RequestAuthModel requestAuth) async {
    final response = await _dio.post(
      "/api/user/auth",
      data: {
        "email": requestAuth.email,
        "password": requestAuth.password,
      },
    );
    return ResponseAuthModel.fromJson(response.data);
  }

  Future<ResponseInformationModel> getInformation(
    RequestInformationModel requestInformation,
  ) async {
    final response = await _dio.get(
      "/api/user/information/${requestInformation.idUser}",
      options: Options(
        headers: {"auth": requestInformation.requestToken},
      ),
    );

    return ResponseInformationModel.fromJson(response.data);
  }
}
