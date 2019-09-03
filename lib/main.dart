import 'package:flutter/material.dart';
import './pages/splash.dart';
//引入路由跳转包fluro
import 'package:fluro/fluro.dart';
import 'routers/application.dart';
import 'routers/handler.dart';

//引入路由跳转包fluro end
Router router = new Router();
void main() {
  void defineRoutes(Router router) {
    router.define("/home", handler: homeHandler);
    router.define("/me/:data", handler: meHandler);
  }
  defineRoutes(router);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Application.router = router;
    return Container(
      child: MaterialApp(
        title: "中蝎秘籍",
        theme: ThemeData(
          primarySwatch: Colors.pink
        ),
        onGenerateRoute: Application.router.generator,
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  }
}
