import 'package:futter_03_shop_app/model/services/validator/name_validator.dart';
import 'package:uuid/uuid.dart';

import '../services/validator/phone_number_validator.dart';
import '../services/validator/mail_validator.dart';
import 'role.dart';

class Profile {
  final Uuid _uid = Uuid();
  DateTime _birth_date;
  Role _role;
  String _nickname,
      _firstname,
      _lastname,
      _email,
      _phone_number,
      _address,
      _photo_path,
      _password;

  Profile(
      {required firstname,
      required lastname,
      required birth_date,
      required password,
      role,
      nickname,
      email,
      phone_number,
      address = 'No address provided',
      photo_path = 'assets/images/default_profile.png'})
      : _nickname = nickname,
        _firstname = firstname,
        _lastname = lastname,
        _birth_date = birth_date,
        _email = email,
        _phone_number = phone_number,
        _address = address,
        _photo_path = photo_path,
        _password = password,
        _role = role {
    if (email != null && MailValidator(email).validate() != null) {
      throw Exception('Invalid email');
    }
    if (phone_number != null &&
        PhoneNumberValidator(phone_number).validate() != null) {
      throw Exception('Invalid phone number');
    }
    if (firstname.isEmpty && NameValidator(firstname).validate() != null) {
      throw Exception('Invalid firstname');
    }
    if (lastname.isEmpty && NameValidator(lastname).validate() != null) {
      throw Exception('Invalid lastname');
    }
    if (birth_date.isAfter(DateTime.now())) {
      throw Exception('Invalid birth date');
    }
    if (nickname == null || nickname.isEmpty) {
      _nickname = _firstname + _lastname;
    }
    if (role == null) {
      _role = Role.guest;
    }
  }

  get password => _password;

  set password(value) {
    _password = value;
  }

  get photo_path => _photo_path;

  set photo_path(value) {
    _photo_path = value;
  }

  get address => _address;

  set address(value) {
    _address = value;
  }

  get phone_number => _phone_number;

  set phone_number(value) {
    _phone_number = value;
  }

  get email => _email;

  set email(value) {
    _email = value;
  }

  get lastname => _lastname;

  set lastname(value) {
    _lastname = value;
  }

  get firstname => _firstname;

  set firstname(value) {
    _firstname = value;
  }

  String get nickname => _nickname;

  set nickname(String value) {
    _nickname = value;
  }

  Role get role => _role;

  set role(Role value) {
    _role = value;
  }

  DateTime get birth_date => _birth_date;

  set birth_date(DateTime value) {
    _birth_date = value;
  }

  Uuid get uid => _uid;
}
