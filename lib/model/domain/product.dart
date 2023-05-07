import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

import '../services/validator/name_validator.dart';

class Product {
  final Uuid _uid = Uuid();
  String _name, _description, _image_path;
  double _price;
  DateTime _release_date;
  List<Category> _tags;

  Product(
      {required name,
      required category,
      description = 'No description provided',
      price = 0.0,
      image_path = 'assets/images/default_product.png',
      release_date})
      : _name = name,
        _description = description,
        _price = price,
        _image_path = image_path,
        _release_date = release_date,
        _tags = [category] {
    if (name.isEmpty && NameValidator(name).validate() != null) {
      throw Exception("Invalid name");
    }
    if (price < 0) {
      throw Exception("Invalid price");
    }
    if (release_date == null) {
      _release_date = DateTime.now();
    }
    if (category.length == 0) {
      throw Exception("Invalid category");
    }
  }

  DateTime get release_date => _release_date;

  set release_date(DateTime value) {
    _release_date = value;
  }

  double get price => _price;

  set price(double value) {
    _price = value;
  }

  get image_path => _image_path;

  set image_path(value) {
    _image_path = value;
  }

  get description => _description;

  set description(value) {
    _description = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  Uuid get uid => _uid;

  List<Category> get tags => _tags;

  set tags(List<Category> value) {
    _tags = value;
  }
}
