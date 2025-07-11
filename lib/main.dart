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
                style: TextStyle(
                    fontSize: 59,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 5,
                    backgroundColor: Colors.red),
              ),
            ),
            crossFadeState: showFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 10),
          ),
        ),
      ),
    );
  }
}
// This code creates a Flutter application that uses an AnimatedCrossFade widget.
// The widget transitions between two child widgets: a button and a text label.
// When the button is pressed, it triggers a state change that causes the text label to appear,
// and the button to disappear, with a smooth animation lasting 2 seconds.
// The initial state shows the button, and pressing it changes the state to show the text label.
// The text label displays "Shajibul" in a large font size.
