import 'package:flutter/material.dart';
import 'package:commercial_app/models/catalog.dart';

class ItemWidget extends StatelessWidget {

  late final Item item;

//assert is to be sure that the item would not be null
  ItemWidget({required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print('${item.name} pressed' );
        },
        //leading is to the left of the screen
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        // trailing is to the rigt of the screen
        // if we want to put the sigh of the dollar before the price we have to put 2 $ signs with \ to give string after that
        trailing: Text('\$${item.price}',
        textScaleFactor: 1.5,
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
