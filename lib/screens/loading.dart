import 'package:flutter/material.dart';
import 'package:github_app/models/user_models.dart';
import 'package:github_app/services/api_service.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void setData(String data) async {
    final apiService = ApiService(username: data);
    UserModel dataModel = await apiService.getData();
    goToRes(dataModel);
  }

  void goToRes(UserModel data) {
    Navigator.pushReplacementNamed(
      context,
      '/result',
      arguments: data,
    );
  }

  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context)!.settings.arguments as String;
    setData(data);

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
