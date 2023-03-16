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
        title: Text(
            model.username.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 21
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(model.profileUrl),
              radius: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              " GitHub Bio ",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              model.bio,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
