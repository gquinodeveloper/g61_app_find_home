class RequestReservationModel {
  RequestReservationModel({
    required this.idHouse,
    required this.idUser,
    required this.date,
    required this.price,
  });

  String idHouse;
  String idUser;
  String date;
  String price;

  Map<String, dynamic> toJson() => {
        "idHouse": idHouse,
        "id_user": idUser,
        "date": date,
        "price": price,
      };
}
