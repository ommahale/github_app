import 'package:flutter/material.dart';
import 'package:github_app/models/user_models.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserModel model = ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(model.username),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(model.profileUrl),
              radius: 60,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              model.bio,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
