import 'validator.dart';

class MailValidator extends Validator {
  MailValidator(String value) : super(value);// value is the mail

  static const String email_valid_structure_1 = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static const String email_valid_structure_2 = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';

  @override
  String? validate(
      {String massage_type = 'Mail',
        String structure = email_valid_structure_1}) {
    return super.validate(massage_type: massage_type, structure: structure);
  }
}
