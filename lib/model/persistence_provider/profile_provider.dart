import 'package:flutter/material.dart';

import '../domain/profile.dart';

class ProfileProvider with ChangeNotifier {
  List<Profile> _profiles = <Profile>[
    Profile(firstname: "Karl", lastname: "Karlson", birth_date: DateTime.tryParse('2012-02-27'), password: "1234"),
    Profile(firstname: "Franz", lastname: "Franzson", birth_date: DateTime.tryParse('2000-10-08'), password: "hugo"),
    Profile(firstname: "Hugo", lastname: "Hugoson", birth_date: DateTime.tryParse('1999-01-01'), password: "franz"),
    Profile(firstname: 'Magdalena', lastname: 'Huber', birth_date: DateTime.tryParse('1977-04-01'), password: 'password')
  ];

  static var _currentProfile = '';

  get currentProfile => _currentProfile;

  void changeCurrentProfile(String value) {
    _currentProfile = value;
    notifyListeners();
  }

  List<Profile> get profiles => List.unmodifiable(_profiles);

  void addProfile(profile) {
    _profiles.add(profile);
    notifyListeners();
  }

  void deleteProfile(profile) {
    _profiles.remove(profile);
    notifyListeners();
  }
}