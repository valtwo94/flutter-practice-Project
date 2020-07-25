import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'HomeScreen';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('clicked');
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                print("Notification Clicked");
              },
              color: Colors.grey),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Search Clicked");
            },
            color: Colors.grey,
          ),
        ],
        elevation: 6,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.black,
          label: Text('이미지 추가'),
          icon: Icon(
            Icons.add,
            color: Colors.grey,
          )),
      body: Container(
        color: Colors.black87,
      ),
    );
  }
}
