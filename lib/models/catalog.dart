class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color});
}

final products = [
  Item(
    id: "Codepur001",
    name: "iPhone 12 pro",
    desc: "Apple iPhone 12th generation",
    price: 999,
    color: "#33505a",
  )
];
