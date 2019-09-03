import 'dart:convert';

import 'package:flutter/material.dart';
import '../service/method.dart';
import '../config/address.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> category;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("常中蝎Blog"),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.teal,
      body: FutureBuilder(
        future: _getIndexData(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return GridView.builder(
                  itemCount: category.length,
                  itemBuilder: (context,index){
                    return _item(index);
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 1.0,
                    crossAxisSpacing: 1.0,
                    childAspectRatio: 1.0
                  ),
                  padding: const EdgeInsets.all(3.0),
              );
            }else{
              return Center(child: Text('加载中........'),);
            }
          },));
  }

  Future<String> _getIndexData() async {
    await request(ServiceUrl+urls['indexapi']).then((val) {
      category = json.decode(val.toString());
    });
    return "加载完成";
  }
  Widget _item(index){
   var mod = category[index]['cat'];
   var img = category[index]['img'];
    return Container(
      child: Stack(
        children: <Widget>[
          Center(child: Text(mod),),
          new Image.asset(
             "images/"+img,
             fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}

