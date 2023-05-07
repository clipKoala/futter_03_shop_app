import 'package:flutter/material.dart';
import 'package:futter_03_shop_app/model/domain/profile.dart';

import '../domain/product.dart';
import 'product_provider.dart';
import 'profile_provider.dart';

class FavoriteProductProvider with ChangeNotifier {
  static var product_provider = ProductProvider().products;
  static var profile_provider = ProfileProvider().profiles;

  Map<Profile, List<Product>> _favoriteProducts = {
    profile_provider.elementAt(0): <Product>[
      product_provider.elementAt(0),
      product_provider.elementAt(1)
    ],
    profile_provider.elementAt(2): <Product>[product_provider.elementAt(2)]
  };

  Map<Profile, List<Product>> get favoriteProducts =>
      Map.unmodifiable(_favoriteProducts);

  void addProduct(Profile profileID, Product productID) {
    if (!_favoriteProducts.containsKey(profileID)) {
      _favoriteProducts[profileID] = [];
    }
    _favoriteProducts[profileID]!.add(productID);
    notifyListeners();
  }

  void removeProduct(Profile profileID, Product productID) {
    if (_favoriteProducts.containsKey(profileID)) {
      _favoriteProducts[profileID]!.remove(productID);
      if (_favoriteProducts[profileID]!.isEmpty) {
        _favoriteProducts.remove(profileID);
      }
    } else {
      throw Exception('Product not in favorite products');
    }
    notifyListeners();
  }
}
