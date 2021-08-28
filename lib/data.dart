import 'dart:convert';

import 'package:converter_app/model.dart';
import 'package:http/http.dart' as http;

class Data {
  Future<List<Clients>?> getData() async {
    var response = await http.get(Uri.parse(
        "https://run.mocky.io/v3/d53400a3-6126-495e-9d16-0b4414b537b3"));

    Map<String, dynamic> jsonData = json.decode(response.body + '\n' + '}');

    Model model = Model.fromJson(jsonData);
    return model.clients;
  }
}
