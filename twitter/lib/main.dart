import 'package:flutter/material.dart';
import './widgets/entry_field.dart';

void main() {
  runApp(const MyApp());
}

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final testController = TextEditingController();
    return (Scaffold(
        appBar: AppBar(title: const Text("Test screen")),
        body: Center(
            child: CustomEntryField(
          controller: testController,
          hint: "Test hint",
          isPassword: false,
        ))));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TestScreen(),
    );
  }
}
