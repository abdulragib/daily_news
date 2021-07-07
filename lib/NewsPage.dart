import 'package:flutter/material.dart';
import "main.dart";

class NewsPage extends StatefulWidget {
  int index;
  NewsPage(this.index, {value});

  @override
  _NewsPageState createState() => _NewsPageState(index);
}

class _NewsPageState extends State<NewsPage> {
   
  _NewsPageState(int index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: new Text(
          "News No : ${widget.index + 1}",
          style: new TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Text(
                "News: ${item[widget.index]['content']}",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Verdana',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
