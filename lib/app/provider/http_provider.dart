import 'package:http/http.dart' as http;

import '../services/baseurl.dart';

class HttpConnect {
  // Future<dynamic> getApi() {}

  Future<dynamic> getApi(
    String url,
  ) async {
    var url = '${BaseUrl()}';
    try {
      var response = await http.get(
        Uri.parse(url),
      );
      if (response.statusCode == 200) {
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<dynamic> postApi(String url, dynamic body) async {
    var url = Uri.parse(BaseUrl().baseUrl);
    try {
      final response = await http.post(url, body: body);

      if (response.statusCode == 200) {
        print('Response: ${response.body}');
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception: $e');
    }
  }

// Future<dynamic> deleteApi(){

// }

// Future<dynamic> updateApi(){

// }
}
