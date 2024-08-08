class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image:
          "https://5.imimg.com/data5/SELLER/Default/2021/4/JX/FC/BN/127651858/apple-iphone-12-pro-gold-png-1000x1000.png",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
