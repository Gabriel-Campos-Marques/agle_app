import 'dart:convert';

import 'package:http/http.dart' as http;

class ModelLogin {
  final String username;
  final String password;

  ModelLogin({required this.username, required this.password});

  Future<void> login() async {
    const String url = 'https://seuapi.com/login';

    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };

    Map<String, dynamic> body = {
      'username': username,
      'password': password,
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
      } else {}
      // ignore: empty_catches
    } catch (e) {}
  }
}
