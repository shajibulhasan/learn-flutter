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
