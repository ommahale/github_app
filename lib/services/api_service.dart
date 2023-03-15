import 'dart:convert';
import 'package:github_app/models/user_models.dart';
import 'package:http/http.dart';

class ApiService {
  final String username;
  ApiService({required this.username});

  Future<UserModel> getData() async {
    try {
      Response res = await get(
        Uri.parse('https://api.github.com/users/$username'),
      );
      Map data = jsonDecode(res.body);
      UserModel temp = UserModel(
        username: data["login"],
        profileUrl: data["avatar_url"],
        location: data["location"],
        bio: data["bio"],
      );
      print(temp);
      return temp;
    } catch (e) {
      UserModel temp = UserModel(
        username: "Some error occured",
        profileUrl: "",
        location: e.toString(),
        bio: e.runtimeType.toString(),
      );
      return temp;
    }
  }
}
