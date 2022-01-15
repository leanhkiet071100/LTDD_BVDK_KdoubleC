import 'dart:convert';
import 'SitesObject.dart';
import 'package:flutter/services.dart';

class SitesProvider {
  static Future<List<dynamic>> readJsonData() async {
    var jsontxt = await rootBundle.loadString('data/fullsites.json');
    var data = json.decode(jsontxt);
    return data['sites'];
  }

  static Future<List<SitesObject>> getAllSites() async {
    List<SitesObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    lsResult = data.map((e) => SitesObject.fromJson(e)).toList();
    return lsResult;
  }

  static Future<List<SitesObject>> searchSites(String strSearch) async {
    List<SitesObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    data.forEach((e) {
      SitesObject c = SitesObject.fromJson(e);
      if (c.Ten_Ddanh.toUpperCase().contains(strSearch.toUpperCase()) ||
          c.Diachi_Ddanh.toUpperCase().contains(strSearch)) {
        lsResult.add(c);
      }
    });
    return lsResult;
  }
}
