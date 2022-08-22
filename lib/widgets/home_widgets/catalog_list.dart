import 'package:commercial_app/pages/home_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:commercial_app/models/catalog.dart';
import 'catalog_image.dart';





class CatalogList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index){
          final catalog = CatalogModel.items[index];
          //CatalogModel.items[index];
          return InkWell(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage(
              catalog: catalog,
            ))),
              child: CatalogItem(catalog: catalog));
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  CatalogItem({required this.catalog}): assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(
                image: catalog.image,
              ),
            ),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.color(Theme.of(context).accentColor).bold.make(),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    '\$${catalog.price}'.text.bold.xl.make(),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Theme.of(context).buttonColor),
                          shape: MaterialStateProperty.all(StadiumBorder())
                      ),
                      onPressed: (){},
                      child: 'Add to cart'.text.make(),
                    )
                  ],
                ).pOnly(right: 8.0)
              ],
            ))
          ],
        )
    ).color(context.cardColor).rounded.square(150).make().p16();
  }
}

