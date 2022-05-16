import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget {
  CustomEntryField({Key? key}) : super(key: key);

  late String hint;
  late TextEditingController controller;
  late bool isPassword;

  @override
  Widget build(BuildContext context) {
    return (Container(
        margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
        child: TextField(
          keyboardType: TextInputType.text,
          controller: controller,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 1),
                borderRadius: BorderRadius.circular(30),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 0),
                borderRadius: BorderRadius.circular(30),
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: hint,
              fillColor: Colors.grey.shade200),
        )));
  }
}
