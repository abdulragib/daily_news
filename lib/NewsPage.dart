import 'package:flutter/material.dart';
import "main.dart";

class NewsPage extends StatelessWidget {
  int index;
  NewsPage(this.index, {value});

  hello() {
    NetworkImage('${item[index]['urlToImage']}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: new Text(
          "News No : ${index + 1}",
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
             child: Text("News: ${item[index]['content']}",
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
