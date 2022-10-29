class ResponseInformationModel {
  ResponseInformationModel({
    this.information,
  });

  List<InformationModel>? information;

  factory ResponseInformationModel.fromJson(Map<String, dynamic> json) =>
      ResponseInformationModel(
        information: List<InformationModel>.from(
          json["information"].map(
            (x) => InformationModel.fromJson(x),
          ),
        ),
      );
}

class InformationModel {
  InformationModel({
    this.idUser,
    this.name,
    this.lastname,
    this.address,
    this.email,
    this.password,
  });

  int? idUser;
  String? name;
  String? lastname;
  String? address;
  String? email;
  String? password;

  factory InformationModel.fromJson(Map<String, dynamic> json) =>
      InformationModel(
        idUser: json["idUser"],
        name: json["name"],
        lastname: json["lastname"],
        address: json["address"],
        email: json["email"],
        password: json["password"],
      );
}
