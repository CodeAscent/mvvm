import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mvvm/core/config/app_config.dart';
import 'package:mvvm/core/error/server_exception.dart';

class HttpWrapper {
  static Map<String, String>? headers = {'Content-Type': 'application/json'};
  static Future<http.Response> get(String endpoint) async {
    try {
      final url = Uri.parse(AppConfig.base_url + endpoint);
      final res = await http.get(url, headers: headers);
      return res;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  static Future<http.Response> post(String endpoint, Object? body) async {
    try {
      final url = Uri.parse(AppConfig.base_url + endpoint);
      final res =
          await http.post(url, body: jsonEncode(body), headers: headers);
      return res;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
