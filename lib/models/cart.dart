import 'package:commercial_app/models/catalog.dart';

class CartModel {
  //Catalog fields
  late CatalogModel _catalog;

  //Collection of IDs, store items of each id
  final List<Item> _itemsIds = [];

  //Get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items => _itemsIds.map((id) => _catalog.getById(id)).toList();


  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

//add item
  void add(Item item) {
    _itemsIds.add(item);
  }

//remove item
  void remove(Item item) {
    _itemsIds.remove(item.id);
  }
}