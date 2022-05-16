import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget {
  const CustomEntryField(
      {Key? key,
      required this.hint,
      required this.controller,
      required this.isPassword})
      : super(key: key);

  final String hint;
  final TextEditingController controller;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return (Container(
        margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
        child: TextField(
          keyboardType: TextInputType.text,
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
              hintText: hint,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 1),
                borderRadius: BorderRadius.circular(30),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 0),
                borderRadius: BorderRadius.circular(30),
              ),
              contentPadding: const EdgeInsets.fromLTRB(30, 15, 0, 15),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[800]),
              fillColor: Colors.grey.shade200),
        )));
  }
}
