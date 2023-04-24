import 'dart:convert';

import 'package:adavance_hafe_exam/Screen/Corona/Model/CoronaModel.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<CoronaModel> GetApiCall() async {
    Uri uri = Uri.parse(
        "https://corona-virus-world-and-india-data.p.rapidapi.com/api");

    var result = await http.get(uri, headers: {
      "content-type": "application/octet-stream",
      "X-RapidAPI-Key": "8d808dcb09msha62d4c0e8e4b3cep10b91ajsn396f04a699a5",
      "X-RapidAPI-Host": "corona-virus-world-and-india-data.p.rapidapi.com",
    });

    var json = jsonDecode(result.body);

    CoronaModel c1 = CoronaModel.fromJson(json);

    return c1;
  }
}
