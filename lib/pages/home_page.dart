import 'dart:convert';
import 'package:commercial_app/models/catalog.dart';
import 'package:commercial_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}


final int days = 30;
final String name = 'Vanshita';

class _HomePageState extends State<HomePage> {

//   //To view the same item as much item as we want, so that we can see how our ui will look alike if we have more items like that
//   final dummyList = List.generate(10, (index) => catelogModel.items[0]);

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 1));
    final catelogJson = await rootBundle.loadString('files/catelog.json');
    final decodedData = jsonDecode(catelogJson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index){
                final item = CatalogModel.items[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                    child:GridTile(
                        header: Container(
                            child: Text(item.name,
                            style: TextStyle(
                              color: Colors.white,
                            ),),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                        ),
                        child: Image.network(item.image),
                    footer: Container(
                      child: Text(item.price.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    ),
                );
                },
          itemCount: CatalogModel.items.length,)
          // ListView.builder(
          //   padding: EdgeInsets.all(16),
          //   itemBuilder: (context, index) {
          //     return ItemWidget(
          //       item: CatalogModel.items[index],
          //       // catelogModel.items[index],
          //     );
          //   },
           : Center(
            child: CircularProgressIndicator(),
          ),
      ),
      // catelogModel.items.length,),
      drawer: MyDrawer(),
    );
  }
}


