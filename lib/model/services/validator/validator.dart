class Validator {
  final String value;

  Validator(this.value);

  String? validate({required String massage_type, required String structure}) {
    if (value.isEmpty) {
      return '$massage_type is required';
    }
    if (!RegExp(structure).hasMatch(value)) {
      return '$massage_type is not valid';
    }
    return null;
  }
}
