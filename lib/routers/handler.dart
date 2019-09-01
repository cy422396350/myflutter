import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/home.dart';
import '../pages/me.dart';

JsonCodec codec = new JsonCodec();

var homeHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return Home();
});
var meHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  var res = json.decode(params["data"][0].toString());
  return Me(res['user'],res['pass']);
});