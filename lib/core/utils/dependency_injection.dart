import 'package:app_find_house/app/data/providers/customer_provider.dart';
import 'package:app_find_house/app/data/repositories/customer_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static load() {
    //Dio

    //Local Storage
    Get.put<FlutterSecureStorage>(const FlutterSecureStorage());

    //Providers
    Get.put<CustomerProvider>(CustomerProvider());

    //Repositories
    Get.put<CustomerRepository>(CustomerRepository());
  }
}
