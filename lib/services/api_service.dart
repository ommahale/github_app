import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

class ApiService {
  final String username;
  ApiService({required this.username});
  late Map<String, dynamic> userData;

  Future<void> getData() async {
    try {
      Response res = await get(
        Uri.parse('https://api.github.com/users/${username}'),
      );
      Map data = jsonDecode(res.body);
      print(data['avatar_url']);
    } catch (e) {}
  }
}
