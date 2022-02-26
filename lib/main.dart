import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: App()));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  List<Widget> _images = [];

  void add() {
    setState(() => _images.add(Container(
          child: Row(
            children: [
              Expanded(child: Center(child: Text('Image')), flex: 1),
              Expanded(
                child: Image(
                  image: AssetImage('images/file.png'),
                ),
                flex: 3,
              )
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Gallery'),
        leading: const Icon(Icons.image_outlined),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        child: Icon(Icons.add),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
              child: Text('Available images',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.red,
                  )),
            ),
            Column(children: _images)
          ],
        ),
      ),
    );
  }
}
