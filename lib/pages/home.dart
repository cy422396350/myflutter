import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("常中蝎Blog"),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.deepOrange,
      body: Center(child: Text("xxxx"),),
    );
  }
}
