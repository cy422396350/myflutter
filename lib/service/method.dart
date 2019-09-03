import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';

Future request(String url,{formData}) async{
  String username = 'changyue';
  String password = 'iphone3g';
  String basicAuth =
      'Basic ' + base64Encode(utf8.encode('$username:$password'));
  try{
    Response response;
    Dio dio = new Dio();
    Options options = Options(
      responseType: ResponseType.json,
      headers: {
        HttpHeaders.authorizationHeader:basicAuth,
        HttpHeaders.contentTypeHeader : "application/x-www-form-urlencoded"
      },
    );
    if(formData != null){
      response  = await dio.post(url,data: formData,options: options);
    }else{
      response  = await dio.post(url,options: options);
    }
    if(response.statusCode != 200){
      throw new Exception("获取数据失败....地址"+url);
    }
    return response.data;
  } catch(e){
    print(e.toString());
  }
}