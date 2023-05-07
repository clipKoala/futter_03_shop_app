import 'package:flutter/material.dart';

import '../domain/product.dart';


class CartProvider with ChangeNotifier {
  Map<Product, int> _cart = [
    Product(name: 'buch-1-pos-flutter', category: Ca)
  ];

  List<String> get cart => List.unmodifiable(_cart);

  void addToCart(String value) {
    _cart.add(value);
    notifyListeners();
  }

  void removeFromCart(String value) {
    _cart.remove(value);
    notifyListeners();
  }
}