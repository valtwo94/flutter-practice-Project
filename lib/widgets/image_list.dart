import 'package:flutter/material.dart';
import 'package:practice1/models/image_model.dart';

class ImageList extends StatelessWidget {
  ImageList({this.images});

  final List<ImageModel> images;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  images[index].url,
                  width: 200,
                  height: 200,
                ),
                Container(
                  width: 300,
                  child: Text(
                    images[index].title,
                    style: TextStyle(color: Colors.white54, fontSize: 30.0),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
          ),
        ));
      },
    );
  }
}
