import 'package:flutter/material.dart';

class Me extends StatelessWidget {
  final String title;
  final String pass;
  Me(this.title,this.pass);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.deepOrange,
      body: Center(child: Text(this.pass),),
    );
  }
}