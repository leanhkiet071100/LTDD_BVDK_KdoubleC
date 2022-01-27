import 'dart:convert';
import 'HarbouObject.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class HarbouProvider {
  static List<HarbouObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<HarbouObject> ls =
        parsed.map<HarbouObject>((e) => HarbouObject.fromJson(e)).toList();
    return ls;
  }

  static Future<List<HarbouObject>> fecthHarbou() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.3/DB_QLDL/Harbou.php'));
    return parseCmt(response.body);
  }
}
