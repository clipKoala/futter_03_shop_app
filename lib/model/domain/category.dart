import 'package:uuid/uuid.dart';

import '../services/validator/name_validator.dart';

class Category {
  final Uuid _uid = Uuid();
  String _name, _description, _image;

  Category(
      {required name,
      description = 'No description provided',
      image = 'assets/images/default_category.png'})
      : _name = name,
        _description = description,
        _image = image {
    if (name.isEmpty && NameValidator(name).validate() != null) {
      throw Exception('Invalid name');
    }
    if (description.isEmpty) {
      throw Exception('Invalid description');
    }
    if (image.isEmpty) {
      throw Exception('Invalid image');
    }
  }

  get image => _image;

  set image(value) {
    _image = value;
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
}
