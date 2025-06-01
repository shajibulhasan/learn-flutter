
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
// _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Colors.green,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Shajibul Hasan Soaib"),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate(<Widget>[
              addDetails('one', 'This is one'),
              addDetails('Two', 'This is two'),
              addDetails('Three', 'This is three'),
              addDetails('Four', 'This is four'),
              addDetails('Five', 'This is five'),
              addDetails('Six', 'This is six'),
              addDetails('one', 'This is one'),
              addDetails('one', 'This is one'),
              addDetails('one', 'This is one'),
              addDetails('one', 'This is one'),
              addDetails('one', 'This is one'),
              addDetails('one', 'This is one'),
              addDetails('one', 'This is one'),
              addDetails('one', 'This is one'),
              addDetails('Two', 'This is one')
            ]))
          ],
        ),
      ),
    );
  }
}

Widget addDetails(
    String name,
    String description,
    ) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}

