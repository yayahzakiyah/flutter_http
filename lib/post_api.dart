import 'dart:convert';

import 'package:flutter_http/model.dart';
import 'package:http/http.dart' as http;

class PostApi {
  static Future<PostResult> connectToAPI(String name, String job) async {
    String apiURL = "https://reqres.in/api/users";

    var resp = await http.post(Uri.parse(apiURL), body: {
      "name": name,
      "job": job,
    });
    var jsonObject = json.decode(resp.body);

    return PostResult.createdPostResult(jsonObject);
  }
}
