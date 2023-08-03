import 'package:flutter/material.dart';
import 'package:loginui/screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Book Store',
        theme: ThemeData(
          fontFamily: 'Kanit',
          primarySwatch: Colors.brown,
        ),
        home: const FirstPage());
  }
}
