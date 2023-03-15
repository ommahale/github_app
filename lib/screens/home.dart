import 'package:flutter/material.dart';
import 'package:github_app/screens/loading.dart';
import 'package:github_app/shared/custom_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchText = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    searchText.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://octodex.github.com/images/droidtocat.png"),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                textEditingController: searchText,
                hintText: 'Search your username',
                textInputType: TextInputType.name,
                iconData: Icons.search,
              ),
              ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                        context,
                        '/loading',
                        arguments: searchText.text,
                      ),
                  child: const Text('Show result'))
            ],
          ),
        ),
      ),
    );
  }
}
