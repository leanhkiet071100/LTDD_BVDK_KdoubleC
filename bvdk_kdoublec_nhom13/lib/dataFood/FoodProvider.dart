import 'dart:convert';
import 'FoodObject.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class FoodProvider {
  static List<FoodObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<FoodObject> ls =
        parsed.map<FoodObject>((e) => FoodObject.fromJson(e)).toList();
    return ls;
  }

  static Future<List<FoodObject>> fecthFood() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.3/DB_QLDL/Food.php'));
    return parseCmt(response.body);
  }
}
