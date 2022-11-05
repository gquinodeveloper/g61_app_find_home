class RequestSignupModel {
  RequestSignupModel({
    required this.name,
    required this.lastname,
    required this.adress,
    required this.email,
    required this.password,
  });

  String name;
  String lastname;
  String adress;
  String email;
  String password;

  Map<String, dynamic> toJson() => {
        "name": name,
        "lastname": lastname,
        "adress": adress,
        "email": email,
        "password": password,
      };
}
