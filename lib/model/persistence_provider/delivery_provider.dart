import 'package:flutter/material.dart';
import 'package:futter_03_shop_app/model/domain/profile.dart';

import 'profile_provider.dart';
import '../domain/product.dart';
import 'product_provider.dart';

class DeliveryProvider with ChangeNotifier {
  static var product_provider = ProductProvider().products;
  static var profile_provider = ProfileProvider().profiles;

  Map<Profile, Map<Product, int>> _delivery = {
    profile_provider.elementAt(0): <Product, int>{
      product_provider.elementAt(0): 1,
      product_provider.elementAt(1): 1
    },
    profile_provider.elementAt(1): <Product, int>{
      product_provider.elementAt(2): 1
    }
  };

  Map<Profile, Map<Product, int>> get cart => Map.unmodifiable(_delivery);

  void addProduct(Map<Product, int> value) {

    notifyListeners();
  }

  void removeProduct(Product value) {
    if (_delivery.containsKey(value)) {
      _delivery[value] = _delivery[value]! - 1;
      if (_delivery[value] == 0) {
        _delivery.remove(value);
      }
    } else {
      throw Exception('Product not in cart');
    }
    notifyListeners();
  }
}
