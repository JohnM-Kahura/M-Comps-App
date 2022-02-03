import 'package:flutter/material.dart';
import 'package:mcomps/pages/home.dart';

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
      title: 'MComps',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

