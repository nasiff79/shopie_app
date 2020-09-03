import 'package:flutter/material.dart';
import 'package:shopie_app/provider/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://media.gettyimages.com/photos/low-section-of-businessman-standing-against-white-background-picture-id956925938?s=612x612',
    ),
    Product(
      id: 'p3',
      title: 'Hand Watch',
      description: 'A luxury watch.',
      price: 129.99,
      imageUrl:
          'https://media.gettyimages.com/photos/low-section-of-businessman-standing-against-white-background-picture-id956925938?s=612x612',
    ),
    Product(
      id: 'p4',
      title: 'Sweater',
      description: 'A comfort sweater.',
      price: 79.99,
      imageUrl:
          'https://media.gettyimages.com/photos/low-section-of-businessman-standing-against-white-background-picture-id956925938?s=612x612',
    ),
  ];

  // var _showFavouritesOnly = false;

  List<Product> get items {
    // if (_showFavouritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favouriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavouritesOnly() {
  //   _showFavouritesOnly = true;
  //   notifyListeners();
  // }
  //
  // void showAll() {
  //   _showFavouritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
