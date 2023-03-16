import 'package:flutter/material.dart';
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
                radius: 200,
                backgroundImage: NetworkImage(
                    "https://media.wired.com/photos/5955c62d5992c54331ac19b4/master/w_2560%2Cc_limit/inspectocat.jpg"),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                textEditingController: searchText,
                hintText: 'Enter The Username',
                textInputType: TextInputType.name,
                iconData: Icons.search,
              ),
              const SizedBox(
                height: 20,
              ),
              /*ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                        context,
                        '/loading',
                        arguments: searchText.text,
                      ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7), // Rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding
                ),
                  child: const Text(
                      'Search',
                    style: TextStyle(
                        fontSize: 21,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
