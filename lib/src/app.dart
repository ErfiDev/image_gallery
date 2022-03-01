import "package:flutter/material.dart";

class App extends StatefulWidget {
  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  List<Widget> _images = [];

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
          onPressed: () {
            setState(() => _images.add(Text('images')));
          },
          child: Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      child: Text('Available images...'),
                      padding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: _images,
              ),
              flex: 7,
            ),
          ],
        ),
      ),
    );
  }
}
