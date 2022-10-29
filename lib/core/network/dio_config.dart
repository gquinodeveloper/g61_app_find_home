import 'package:app_find_house/core/environment/env.dart';
import 'package:app_find_house/core/network/interceptors/logger_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DioConfig {
  static void initialize() {
    Get.lazyPut<Dio>(
      () => Dio(
        BaseOptions(
            baseUrl: Environment.appConfig["baseUrl"],
            connectTimeout: Environment.appConfig["connectTimeout"],
            responseType: ResponseType.json),
      )..interceptors.addAll([
          LoggerInterceptor(),
        ]),
      fenix: true,
    );
  }
}
