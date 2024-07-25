import 'dart:convert';
import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl = "https://base.com";

  // Helper methods to make a get request;

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // helper method to make a post request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'content-type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  //helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'content-type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }
  // Helper method to handle delete
  static Future<Map<String, dynamic>> delete(String endpoint, dynamic data) async {
    final response = await http.delete(
        Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }
  //helper method to handle response

  static Future<Map<String, dynamic>> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }


}
