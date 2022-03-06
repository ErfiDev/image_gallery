import 'package:flutter/material.dart';
import '../models/image.dart';

class ImageWidget extends StatelessWidget {
  final List<ImageModel> images;

  const ImageWidget(this.images, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (ctx, int i) {
        return Container(
          width: 350,
          height: 250,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(2),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image(
                  image: NetworkImage(images[i].url!),
                ),
                flex: 5,
              ),
              Expanded(
                child: Text(images[i].title!),
                flex: 1,
              )
            ],
          ),
        );
      },
    );
  }
}
