import 'package:flutter/material.dart';

import '../domain/product.dart';
import 'product_provider.dart';

class CartProvider with ChangeNotifier {
  static var product_provider = ProductProvider().products;

  Map<Product, int> _cart = {
    product_provider.elementAt(0): 1,
    product_provider.elementAt(1): 2,
    product_provider.elementAt(2): 1
  };

  Map<Product, int> get cart => Map.unmodifiable(_cart);

  void addProduct(Product value) {
    if (!_cart.containsKey(value)) {
      _cart[value] = 0;
    }
    _cart[value] = _cart[value]! + 1;
    notifyListeners();
  }

  void removeProduct(Product value) {
    if (_cart.containsKey(value)) {
      _cart[value] = _cart[value]! - 1;
      if (_cart[value] == 0) {
        _cart.remove(value);
      }
    } else {
      throw Exception('Product not in cart');
    }
    notifyListeners();
  }
}
