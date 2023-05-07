import 'validator.dart';

class NameValidator extends Validator {
  NameValidator(String value) : super(value);

  static const String name_valid_structure_1 =
      r'^.{1-50}$'; // only for the validator class

  @override
  String? validate(
      {String massage_type = 'Name',
      String structure = name_valid_structure_1}) {
    if (value.isEmpty) {
      return 'Name can\'t be empty';
    }
    if (value.length < 2) {
      return 'Name must be at least 2 characters long';
    }
    if (value.length > 50) {
      return 'Name must be less than 50 characters long';
    }
    return super.validate(massage_type: massage_type, structure: structure);
  }
}
