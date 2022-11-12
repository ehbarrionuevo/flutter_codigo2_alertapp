class UserModel {
  String fullName;
  String dni;
  String address;
  String phone;

  UserModel({
    required this.fullName,
    required this.dni,
    required this.address,
    required this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        fullName: json["nombreCompleto"],
        dni: json["dni"],
        address: json["direccion"],
        phone: json["telefono"],
      );


}
