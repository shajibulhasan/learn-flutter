import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_isChecked == false
                  ? "Checkbox is unchecked"
                  : "Checkbox is checked"),
              Checkbox(
                  value: _isChecked,
                  onChanged: (bool? val) {
                    setState(() {
                      _isChecked = val ?? false;
                      print(_isChecked);
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
// This code creates a simple Flutter application with a checkbox.
// The checkbox can be checked or unchecked, and the text updates accordingly.
// When the checkbox is checked, it displays "Checkbox is checked",
// and when unchecked, it displays "Checkbox is unchecked".
// The state of the checkbox is managed using a boolean variable `_isChecked`.
// The `setState` method is called to update the UI when the checkbox state changes.
// The `print` statement outputs the current state of the checkbox to the console.
// This is a basic example of how to use a checkbox in Flutter with state management.
// You can run this code in a Flutter environment to see the checkbox in action.
// Make sure to have the Flutter SDK set up and run this code in a Flutter project.
