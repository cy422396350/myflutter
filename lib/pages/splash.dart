import 'dart:async';
import 'package:flutter/material.dart';
import '../routers/application.dart';
import 'package:fluro/fluro.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer _timer;
  int count = 1;

  startTime() async {
    //设置启动图生效时间
    var _duration = new Duration(milliseconds: 500);
    new Timer(_duration, () {
      // 空等.5秒之后再计时
      _timer = new Timer.periodic(const Duration(milliseconds: 500), (v) {
        count--;
        if (count == 0) {
          navigationPage();
        } else {
          setState(() {});
        }
      });
      return _timer;
    });
  }

  void navigationPage() {
    _timer.cancel();
    //跳转页面
    Application.router.navigateTo(context, "/home",transition: TransitionType.fadeIn);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: const Alignment(1.0, -1.0), // 右上角对齐
      children: [
        new ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: new Image.asset(
            "images/splash.jpg",
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

}