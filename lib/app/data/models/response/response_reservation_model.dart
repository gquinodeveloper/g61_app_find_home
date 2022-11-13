class ResponseReservationModel {
  ResponseReservationModel({
    this.message = "",
  });

  late String message;

  factory ResponseReservationModel.fromJson(Map<String, dynamic> json) =>
      ResponseReservationModel(
        message: json["message"],
      );
}
