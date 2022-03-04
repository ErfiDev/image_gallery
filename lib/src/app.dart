import "package:flutter/material.dart";
import 'package:http/http.dart' show get;
import 'dart:convert';

import 'package:image_gallery/src/models/image.dart';
import 'package:image_gallery/src/widgets/image.dart';
// import 'package:image_gallery/src/widgets/image.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  final List<ImageModel> _images = [];
  int _counter = 1;

  void getImage() async {
    var url =
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$_counter');
    var data = await get(url);

    // converting to json
    var toJson = json.decode(data.body);
    var imgModel = ImageModel.fromJson(toJson);
    setState(() {
      _counter++;
      _images.add(imgModel);
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: 'Image Gallery',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.image_outlined),
          title: Text('Image Gallery'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getImage,
          child: Icon(Icons.add),
        ),
        body: ImageWidget(_images),
      ),
    );
  }
}
