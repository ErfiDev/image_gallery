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
          width: 250,
          height: 150,
          child: Image(
            image: NetworkImage(images[i].url!),
          ),
        );
      },
    );
  }
}
