import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'accountObject.dart';

class AccountProvider {
  static List<AccountObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<AccountObject> ls =
        parsed.map<AccountObject>((e) => AccountObject.fromJson(e)).toList();
    return ls;
  }

  static Future<List<AccountObject>> fecthPost() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.12/DB_QLDL/Post.php'));
    return parseCmt(response.body);
  }

  static Future<List<AccountObject>> fecthPost1() async {
    var url = "http://192.168.1.12/flutter/quanlythongtincanhan.php";
    SharedPreferences pres = await SharedPreferences.getInstance();
    var username = pres.getString("username");
    var password = pres.getString("password");
    var response = await http.post(Uri.parse(url),
        body: ({
          "username": username,
          "password": password,
        }));
    return parseCmt(response.body);
  }
}
