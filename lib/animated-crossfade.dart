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
  bool showFirst = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedCrossFade(
            firstChild: Container(
              color: Colors.deepOrange,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showFirst = false;
                  });
                },
                child: const Text('Show Second'),
              ),
            ),
            secondChild: Center(
              child: Text(
                "Shajibul",
                style: TextStyle(fontSize: 59),
              ),
            ),
            crossFadeState: showFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
