import 'package:app_find_house/app/data/models/request/request_signup_model.dart';
import 'package:app_find_house/app/data/repositories/customer_repository.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
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

  void signUp() async {
    {
      try {
        final response = await _customerRepository.postSignUp(
          RequestSignupModel(
            name: "Kevin4",
            lastname: "Kevin4",
            adress: "Lima-Lima-Lima",
            email: "kevin4@gmail.com",
            password: "123",
          ),
        );
        Get.snackbar(
          "Estado de registro",
          response.message,
          snackPosition: SnackPosition.BOTTOM,
        );
      } catch (error) {
        Get.snackbar("Error de registro", error.toString());
      }
    }
  }
}
