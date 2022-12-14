import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';



class CatalogImage extends StatelessWidget {
  final String image;
  // ignore: use_key_in_widget_constructors
  const CatalogImage({required this.image});
  @override
  Widget build(BuildContext context) {
    return   Image.network(
      image,
      // catalog.image
    ).box.rounded.p8.color(Theme.of(context).canvasColor).make().p16().w40(context);
  }
}

