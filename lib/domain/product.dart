import 'product_type.dart';

class Product {
  int id;
  String name, description, image;
  double price;
  bool isFavorite, isInCart;
  ProductType type;
  Map<String, String> ?details;

  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.type,
      this.image = '',
      this.description = 'no description',
      this.isFavorite = false,
      this.isInCart = false});

}
