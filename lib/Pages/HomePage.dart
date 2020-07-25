import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:practice1/models/image_model.dart';
import 'dart:convert';

import 'package:practice1/widgets/image_list.dart';

class HomePage extends StatefulWidget {
  static final String id = 'HomeScreen';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    var response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

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
          onPressed: fetchImage,
          backgroundColor: Colors.black,
          label: Text('이미지 추가'),
          icon: Icon(
            Icons.add,
            color: Colors.grey,
          )),
      body: Container(color: Colors.black87, child: ImageList(images: images)),
    );
  }
}
