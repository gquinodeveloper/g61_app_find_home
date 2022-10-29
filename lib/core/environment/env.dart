enum ENV {
  DESA,
  QA,
  PROD,
}

extension Environment on ENV {
  static ENV type = ENV.DESA;
  static Map<String, dynamic> get appConfig {
    switch (type) {
      case ENV.DESA:
        return {
          "environment": "DESARROLLO",
          "baseUrl": "https://api-reservation-flutter.herokuapp.com",
          "connectTimeout": 60000,
        };
      case ENV.QA:
        return {
          "environment": "QA",
          "baseUrl": "https://QA-api-reservation-flutter.herokuapp.com",
          "connectTimeout": 60000,
        };
      case ENV.PROD:
        return {
          "environment": "PRODUCCIÓN",
          "baseUrl": "https://PROD-api-reservation-flutter.herokuapp.com",
          "connectTimeout": 60000,
        };
      default:
        return {"": ""};
    }
  }
}
