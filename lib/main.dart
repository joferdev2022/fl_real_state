import 'package:feed_app/pages/cover.dart';
import 'package:feed_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real State',
      initialRoute: 'cover',
      routes: {
        'cover': (_) => Cover(),
        'home': (_) => HomePage(),
      },
    );
  }
}
