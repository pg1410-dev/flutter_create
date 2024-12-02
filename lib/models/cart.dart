import 'package:flutter_create/models/catalog.dart';

class CartModel {
  // catalog field
  late CatalogModel _catalog;

  // Collection of Ids - store Ids of each item
  final List<int> _itemIds = [];

// Get Catalog
  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  // Get items in the Cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}