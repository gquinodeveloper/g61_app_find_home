import 'package:app_find_house/app/data/models/request/request_auth_model.dart';
import 'package:app_find_house/app/data/models/request/request_information_model.dart';
import 'package:app_find_house/app/data/models/response/response_auth_model.dart';
import 'package:app_find_house/app/data/models/response/response_information_model.dart';
import 'package:app_find_house/app/data/providers/customer_provider.dart';
import 'package:get/get.dart';

class CustomerRepository {
  final _apiProvider = Get.find<CustomerProvider>();

  Future<ResponseAuthModel> postAuth(RequestAuthModel requestAuth) =>
      _apiProvider.postAuth(requestAuth);

  Future<ResponseInformationModel> getInformation(
    RequestInformationModel requestInformation,
  ) =>
      _apiProvider.getInformation(requestInformation);
}
