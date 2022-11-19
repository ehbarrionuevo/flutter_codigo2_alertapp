import 'dart:convert';
import 'dart:io';

import 'package:codigo2_alerta/models/citizen_model.dart';
import 'package:codigo2_alerta/models/incident_model.dart';
import 'package:codigo2_alerta/models/incident_register_model.dart';
import 'package:codigo2_alerta/models/incident_type_model.dart';
import 'package:codigo2_alerta/models/user_model.dart';
import 'package:codigo2_alerta/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:mime_type/mime_type.dart';
import 'package:http_parser/http_parser.dart';

class ApiService {
  Future<UserModel?> login(String dni, String password) async {
    Uri _url = Uri.parse("$pathProduction/login/");
    http.Response response = await http.post(
      _url,
      headers: {
        "Content-Type": "application/json",
      },
      body: json.encode(
        {
          "username": dni,
          "password": password,
        },
      ),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = json.decode(response.body);
      UserModel userModel = UserModel.fromJson(myMap["user"]);
      return userModel;
    }
    return null;
  }

  Future<List<CitizenModel>> getCitizen() async {
    Uri _url = Uri.parse("$pathProduction/ciudadanos/");
    http.Response response = await http.get(_url);
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = json.decode(response.body);
      List list = myMap["data"];
      List<CitizenModel> citizenList =
          list.map((e) => CitizenModel.fromJson(e)).toList();
      return citizenList;
    }
    return [];
  }

  Future<List<IncidentTypeModel>> getIncidentType() async {
    Uri _url = Uri.parse("$pathProduction/incidentes/tipos/");
    http.Response response = await http.get(_url);
    if (response.statusCode == 200) {
      List list = json.decode(response.body);
      List<IncidentTypeModel> incidentTypeList =
          list.map((e) => IncidentTypeModel.fromJson(e)).toList();
      return incidentTypeList;
    }
    return [];
  }

  Future<List<IncidentModel>> getIncident() async {
    Uri _url = Uri.parse("$pathProduction/incidentes/");
    http.Response response = await http.get(_url);
    if (response.statusCode == 200) {
      List listData = json.decode(response.body);
      List<IncidentModel> incidentList =
          listData.map((e) => IncidentModel.fromJson(e)).toList();
      return incidentList;
    }
    return [];
  }

  Future<bool> registerIncident(IncidentRegisterModel model) async {
    Uri _url = Uri.parse("$pathProduction/incidentes/crear/");
    http.Response response = await http.post(
      _url,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Token f192cea511f6c6231ebbee22bcec8873ac60e497",
      },
      body: json.encode(
        {
          "latitud": model.latitude,
          "longitud": model.longitude,
          "tipoIncidente": model.incidentTypeId,
          "estado": model.status
        },
      ),
    );
    // if(response.statusCode == 201){
    //   return true;
    // }
    // return false;
    return response.statusCode == 201;
  }


  registerNews(File imageFile) async {
    
    Uri _url = Uri.parse("$pathProduction/noticias/");
    http.MultipartRequest request = http.MultipartRequest("POST", _url);

    print(mime(imageFile.path));
    List<String> mimeType = mime(imageFile.path)!.split("/");

    print(mimeType);
    http.MultipartFile file = await http.MultipartFile.fromPath(
      "imagen",
      imageFile.path,
      contentType: MediaType(mimeType[0], mimeType[1]),
    );

    request.fields["titulo"] = "Noticia: Elvis desde Flutter 1";
    request.fields["link"] = "https://www.youtube.com/watch?v=4Oyf2-7b_kQ&ab_channel=VisualPolitik";
    request.fields["fecha"] = "2022-11-18";
    request.files.add(file);



  }


}
