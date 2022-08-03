class items {
  late final String id;
  late final String name;
  late final String desc;
  late final num price;
  late final String color;
  late final String image;


  items(
      {required this.name, required this.id, required this.color, required this.desc, required this.image, required this.price});


  final products = [items(
      id: "Codepur001",
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: '#33505a',
      image: '',
  )
  ];
}