import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkSevice {
  static Future<dynamic> fetchData(url) async {
    http.Response response = await http.get(url);
    var res = jsonDecode(response.body);
    return res;
  }
}
