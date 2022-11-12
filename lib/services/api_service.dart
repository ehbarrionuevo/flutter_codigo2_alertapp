import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  Future login() async {
    Uri _url = Uri.parse("http://alertahunter.herokuapp.com/API/login/");
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
    print(response.statusCode);
    print(response.body);
  }
}
