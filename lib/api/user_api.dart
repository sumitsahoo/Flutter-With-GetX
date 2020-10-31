import 'dart:convert';

import 'package:getx_starter/models/user.dart';
import 'package:http/http.dart' as http;

const baseUrl = "https://5de620aa9c4220001405b262.mockapi.io/api/v1";

class UserAPI {
  static Future<List<User>> getUsers() async {
    var url = baseUrl + "/user";
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((user) => new User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users from API');
    }
  }
}
