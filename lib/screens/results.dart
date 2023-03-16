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
          style: const TextStyle(fontWeight: FontWeight.w200, fontSize: 21),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(model.profileUrl),
                radius: 150,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 150,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent[400],
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 13, 134, 104),
                            Color.fromARGB(255, 46, 93, 150)
                          ])),
                  child: Text(
                    model.location,
                    style: const TextStyle(
                        color: Colors.white, letterSpacing: 2, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
      ),
    );
  }
}
