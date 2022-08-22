

class CatalogModel {
  static List<Item> items = [];
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
  Item getById(int id) => items.firstWhere((element) => element.id == id, orElse: null);

  //Get item by position
  Item getByPos(int pos) => items[pos];

}

  class Item {
    late final int id;
    late final String name;
    late final String desc;
    late final num price;
    late final String color;
    late final String image;


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