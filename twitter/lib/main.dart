import 'package:flutter/material.dart';
import './widgets/entry_field.dart';
import './widgets/flat_button.dart';

void main() {
  runApp(const MyApp());
}

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final testController = TextEditingController();
    final testCustomField = CustomEntryField(
      controller: testController,
      hint: "Test hint",
      isPassword: false,
    );
    final testButton = CustomFlatButton(
        label: "Test button", onPressed: () => print('button pressed'));
    return (Scaffold(
        appBar: AppBar(title: const Text("Test screen")),
        body: Center(child: testButton)));
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
