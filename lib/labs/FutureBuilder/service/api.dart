import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:naghamat/labs/FutureBuilder/models/rondom_user.dart';

class Api {
  static Future<RondomUser> getUser() async {
    String url = 'https://randomuser.me/api/';
    try {
      var response = await http.get(Uri.parse(url));
      var data = jsonDecode(response.body);
      return RondomUser.fromJson(data['results'][0]);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
