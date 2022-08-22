import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //same as Text('Catalog app')
        "Catalog App".text.xl5.bold.color(Theme.of(context).buttonColor).make(),
        "Trending Products".text.xl2.make()
      ],
    );
  }
}



