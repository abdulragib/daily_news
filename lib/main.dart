import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import "Home.dart";

var data;
List item = data['items'];
void main() async {
  data = await getNews();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Daily News",
      home: Home(),
      theme: new ThemeData(primarySwatch: Colors.green),
    );
  }
}

Future getNews() async {
  String url =
      "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fwww.aajtak.in%2Frssfeeds%2F%3Fid%3Dhome";
  http.Response response = await http.get(Uri.parse(url));
  return json.decode(response.body);
  
}

//https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fwww.aajtak.in%2Frssfeeds%2F%3Fid%3Dhome hindi news
//    <uses-permission android:name="android.permission.INTERNET"/> give this permission in android manifest.