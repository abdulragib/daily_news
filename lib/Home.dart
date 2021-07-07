import 'package:flutter/material.dart';
import 'NewsPage.dart';
import "main.dart";



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Daily News",
          style: TextStyle(
            fontSize:22, 
            fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: ListView.builder(
            itemCount: item.length,
            itemBuilder: (BuildContext context, int position) {
              if (position.isOdd) return new Divider();
              int index = position ~/ 2;
              
              return ListTile(
                title: new Text(
                  "${item[index]['title']}",
                  style: new TextStyle(
                      fontSize: 15.5,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: new Text("${item[index]['author']}"),
                leading: new CircleAvatar(
                  child: Text("${index + 1}"),
                ),
                onTap: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewsPage(index),),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
