import 'package:app_find_house/app/data/models/request/request_auth_model.dart';
import 'package:app_find_house/app/data/repositories/customer_repository.dart';
import 'package:app_find_house/app/routes/app_views.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    doAuth();
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

  //Functions
  void doAuth() async {
    try {
      final response = await _customerRepository.postAuth(
        RequestAuthModel(
          email: "gqcrispin@gmail.com",
          password: "123456",
        ),
      );
    } catch (error) {
      print("Error -> $error");
    }
  }
}
