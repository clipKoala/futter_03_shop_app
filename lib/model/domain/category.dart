import 'package:uuid/uuid.dart';

import '../services/validator/name_validator.dart';

enum Category {
  book(name: 'book'),
  programming(name: 'programming'),
  technology(name: 'technology'),
  flutter(name: 'flutter'),
  datenbank(name: 'datenbank'),
  note(name: 'note'),
  creativity(name: 'creativity'),
  organisation(name: 'organisation');

  final String name, description, image;

  const Category(
      {required name,
      description = 'No description provided',
      image = 'assets/images/default_category.png'})
      : name = name,
        description = description,
        image = image;

  void validation() {
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
}
