import 'package:futter_03_shop_app/model/services/validator/validator.dart';

class PhoneNumberValidator extends Validator {
  PhoneNumberValidator(super.value);

  static const String phone_number_valid_structure_1 =
      r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)';
  static const String phone_number_valid_structure_2 = r'^\+?[0-9]{10,12}$';

  @override
  String? validate(
      {String massage_type = 'Phone number',
      String structure = phone_number_valid_structure_1}) {
    return super.validate(massage_type: massage_type, structure: structure);
  }
}
