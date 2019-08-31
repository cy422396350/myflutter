import 'package:flutter/material.dart';

import './splash.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: MaterialApp(
        title: "中蝎秘籍",
        theme: ThemeData(
          primarySwatch: Colors.pink
        ),
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  }
}
