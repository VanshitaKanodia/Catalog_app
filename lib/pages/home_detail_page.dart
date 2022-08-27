import 'package:commercial_app/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';



class HomeDetailPage extends StatelessWidget {

  late final Item catalog;

  HomeDetailPage({required this.catalog}) : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            '\$${catalog.price}'.text.bold.xl4.red800.make(),
            AddToCart(catalog: catalog).wh(120, 50)
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [Hero(
            tag: Key(catalog.id.toString()),
            child:
            Image.network(catalog.image),
          ).p16().h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Expanded(child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                      children: [catalog.name.text.xl4
                          .color(context.accentColor)
                          .bold
                          .make(),
                        catalog.desc.text
                            .textStyle(context.captionStyle)
                            .xl
                            .make(),
                        10.heightBox,
                        'fbrfn dbainsdj  ifasifnd n doufnkas  isabfiajkfnd f idfbiofnad n dfa;inna j erj v jrbj xcsbdkc kdjcbskje kjsdjbcksjec ckjndjd jdfnkw sdjjfnlsdd sdnflsd lskdnfm aidbfiahdbfnma jahdbfiadb dbfia;qbdh ubfuona abcidbbaiufabjoi IFOUFASND nwdowen dhsojdnf'
                            .text.textStyle(context.captionStyle).make().p16(),
                      ]
                  ).py64(),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
