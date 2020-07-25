import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Practice App',
    home: MyPage(),
  ));
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
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
          label: Text('글 추가'),
          icon: Icon(
            Icons.add,
            color: Colors.grey,
          )),
    );
  }
}
