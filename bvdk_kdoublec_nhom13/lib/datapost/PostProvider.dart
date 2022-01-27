import 'dart:convert';
import 'package:http/http.dart' as http;
import 'PostOject.dart';

class PostProvider {
  static List<PostObject> parseCmt(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<PostObject> ls =
        parsed.map<PostObject>((e) => PostObject.fromJson(e)).toList();
    return ls;
  }

  static Future<List<PostObject>> fecthPost() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.3/DB_QLDL/Post.php'));
    return parseCmt(response.body);
  }
}
