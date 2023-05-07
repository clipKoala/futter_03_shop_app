import '../services/validator/name_validator.dart';

enum Role {
  admin(name: 'admin'), user(name: 'user'), guest(name: 'guest');

  final String _name;

  const Role({required name}) : _name = name;

  String get name => _name;
}