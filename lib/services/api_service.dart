import 'dart:convert';

import 'package:codigo2_alerta/models/user_model.dart';
import 'package:codigo2_alerta/utils/constants.dart';
import 'package:http/http.dart' as http;

class ApiService {

  Future<UserModel?> login() async {
    Uri _url = Uri.parse("$pathProduction/login/");
    http.Response response = await http.post(
      _url,
      headers: {
        "Content-Type": "application/json",
      },
      body: json.encode(
        {
          "username": "47707721",
          "password": "mandarina",
        },
      ),
    );
    if(response.statusCode == 200){
      Map<String, dynamic> myMap = json.decode(response.body);
      UserModel userModel = UserModel.fromJson(myMap["user"]);
      return userModel;
    }
    return null;

  }
}
