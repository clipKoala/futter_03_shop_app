import 'package:futter_03_shop_app/model/domain/product.dart';
import 'package:uuid/uuid.dart';

import 'profile.dart';

class Delivery {
  final Uuid _uid = Uuid();
  Profile _profile;
  List<Product> _products;
  String _address;
  String _status;
  DateTime _createdAt;

  Delivery(
      {required profile,
      address,
      status = 'No status provided',
      createdAt,
      required products})
      : _profile = profile,
        _address = address,
        _status = status,
        _createdAt = createdAt,
        _products = products {
    if (address.isEmpty) {
      if (_profile.address.isEmpty) {
        throw Exception("Invalid address");
      } else {
        _address = _profile.address;
      }
    }
    if (createdAt == null) {
      _createdAt = DateTime.now();
    }
    if (products.length == 0) {
      throw Exception("Invalid products");
    }
  }

  DateTime get createdAt => _createdAt;

  set createdAt(DateTime value) {
    _createdAt = value;
  }

  String get status => _status;

  set status(String value) {
    _status = value;
  }

  String get address => _address;

  set address(String value) {
    _address = value;
  }

  Profile get profile => _profile;

  set profile(Profile value) {
    _profile = value;
  }

  Uuid get uid => _uid;

  List<Product> get products => _products;

  set products(List<Product> value) {
    _products = value;
  }
}
