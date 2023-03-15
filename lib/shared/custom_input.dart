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
      width: 300,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          prefixIcon: Icon(iconData),
          hintText: hintText,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ),
        keyboardType: textInputType,
        obscureText: isPass,
      ),
    );
  }
}
