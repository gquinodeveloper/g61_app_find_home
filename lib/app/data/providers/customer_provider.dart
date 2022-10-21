import 'package:app_find_house/app/data/models/request/request_auth_model.dart';
import 'package:app_find_house/app/data/models/response/response_auth_model.dart';
import 'package:dio/dio.dart';

class CustomerProvider {
  final _dio = Dio();

  Future<ResponseAuthModel> postAuth(RequestAuthModel requestAuth) async {
    final response = await _dio.post(
      "https://api-reservation-flutter.herokuapp.com/api/user/auth",
      data: {
        "email": requestAuth.email,
        "password": requestAuth.password,
      },
    );
    return ResponseAuthModel.fromJson(response.data);
  }
}
