import 'dart:convert';
import 'RestauObject.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class RestauProvider {
  static List<RestauObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<RestauObject> ls =
        parsed.map<RestauObject>((e) => RestauObject.fromJson(e)).toList();
    return ls;
  }

  static Future<List<RestauObject>> fecthHarbou() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.3/DB_QLDL/Store.php'));
    return parseCmt(response.body);
  }
}
