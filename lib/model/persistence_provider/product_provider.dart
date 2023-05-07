import 'package:flutter/material.dart';

import '../domain/category.dart';
import '../domain/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(
        name: 'buch-1-pos-flutter',
        category: <Category>[
          Category.book,
          Category.programming,
          Category.technology,
          Category.flutter
        ],
        price: 10.0,
        description:
            'das ist ein buch über flutter. es ist sehr gut.\n '
                'seiten: 180\n '
                'autor: Karl\n '
                'verlag: abc\n '
                'isbn: 1234567890\n '
                'erscheinungsdatum: 01.01.2021',
        release_date: DateTime.now(),
        image_path: 'assets/images/buch-1-pos-flutter.jpg'),
    Product(
        name: 'buch-2-dbi-DB Systeme',
        category: <Category>[
          Category.book,
          Category.technology,
          Category.datenbank
        ],
        price: 11.0,
        release_date: DateTime.now(),
        description: 'das ist ein buch über DB Systeme. es ist sehr gut.\n '
            'seiten: 345\n '
            'autor: Kurst GT\n '
            'verlag: VFT\n '
            'isbn: 1234577890\n '
            'erscheinungsdatum: 21.05.2011',
        image_path: 'assets/images/buch-2-pos-flutter.jpg'),
    Product(
        name: 'Notizblock-1',
        category: <Category>[
          Category.note,
          Category.creativity,
          Category.organisation
        ],
        price: 12.0,
        release_date: DateTime.now(),
        image_path: 'assets/images/buch-3-pos-flutter.jpg'),
  ];

  List<Product> get products => List.unmodifiable(_products);

  void addProduct(Product value) {
    if (!_products.contains(value)) {
      _products.add(value);
    }
    notifyListeners();
  }

  void removeProduct(Product value) {
    if (_products.contains(value)) {
      _products.remove(value);
    }
    notifyListeners();
  }
}
