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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Dismissible(
            key: ValueKey("Soaib"),
            background: Container(
              color: Colors.green,
              child: const Icon(
                Icons.delete,
                size: 40,
              ),
            ),
            child: ListTile(
              title: Text("Easy Explanation of Dismissible Widget"),
              subtitle: Text("Swipe to delete or perform an action"),
              trailing: Icon(
                Icons.ac_unit,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// This code creates a simple Flutter application with a Dismissible widget.
// The Dismissible widget allows users to swipe away a ListTile, which can be used to delete or perform an action on the item.
// The ListTile contains a title, subtitle, and an icon. The background color of the Dismissible widget is set to green, and an icon is displayed when the item is swiped.
