import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final IconData iconData;
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.isPass = false,
      required this.textEditingController,
      required this.textInputType,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return SizedBox(
      width: 500,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          prefixIcon: Icon(iconData, color: Colors.white),
          hintText: hintText,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
          iconColor: Colors.white,
        ),
        keyboardType: textInputType,
        obscureText: isPass,
        onSubmitted: (String value) {
          Navigator.pushNamed(
            context,
            '/loading',
            arguments: value,
          );
        },
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
        cursorColor: Colors.white,
      ),
    );
  }
}
