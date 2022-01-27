import 'dart:convert';
import 'SitesObject.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class SitesProvider {
  static List<SitesObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<SitesObject> ls =
        parsed.map<SitesObject>((e) => SitesObject.fromJson(e)).toList();
    return ls;
  }

  static Future<List<SitesObject>> fecthSites() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.3/DB_QLDL/sites.php'));
    return parseCmt(response.body);
  }
}
