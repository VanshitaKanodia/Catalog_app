
class CatalogModel {

  // static final catModel = CatalogModel._internal();
  // CatalogModel._internal();
  // factory CatalogModel() => catModel;


  static late List<Item> items;
  // = [
  //   Item(
  //   id: 'Codepur001',
  //   name: 'iPhone 12 Pro',
  //   desc: 'Apple iPhone 12th generation',
  //   price: 999,
  //   color: '#33505a',
  //   image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc',
  // ),
  // ];

  //Get item by ID
  // ignore: null_closures
  Item getById(dynamic id) => items.firstWhere((element) => element.id == id, orElse: null);

  //Get item by position
  Item getByPosition(int pos) => items[pos];
}

  class Item {
    final int id;
    final String name;
    final String desc;
    final num price;
    final String color;
    final String image;


    Item(
        {required this.name, required this.id, required this.color, required this.desc, required this.image, required this.price});


//factory is used as we are calling final functions or it helps in choosing from the list of the items
    factory Item.fromMap(Map<String, dynamic> map){
      return Item(
        id: map['id'],
        price: map['price'],
        color: map['color'],
        name: map['name'],
        desc: map['desc'],
        image: map['image'],
      );
    }


    toMap() =>
        {
          'id': id,
          'name': name,
          'price': price,
          'color': color,
          'desc': desc,
          'image': image,
        };
  }