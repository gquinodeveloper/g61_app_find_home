import 'package:app_find_house/app/data/providers/customer_provider.dart';
import 'package:app_find_house/app/data/repositories/customer_repository.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static load() {
    //Dio

    //Providers
    Get.put<CustomerProvider>(CustomerProvider());

    //Repositories
    Get.put<CustomerRepository>(CustomerRepository());
  }
}
