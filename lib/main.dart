import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'screens/detail/detail_screen.dart';
import 'screens/home/home.dart';
import 'screens/mostpopular/most_popular_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/special_offers/special_offers_screen.dart';
import 'screens/tabbar/tabbar.dart';
import 'screens/test/test_screen.dart';


void main() => runApp(const StartPage());

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buyer',
      theme: appTheme(),
      routes: routes,
      home: const FRTabbarScreen(),
    );
  }
}

final Map<String, WidgetBuilder> routes = {
  HomeScreen.route(): (context) => const HomeScreen(title: '123'),
  MostPopularScreen.route(): (context) => const MostPopularScreen(),
  SpecialOfferScreen.route(): (context) => const SpecialOfferScreen(),
  ProfileScreen.route(): (context) => const ProfileScreen(),
  ShopDetailScreen.route(): (context) => const ShopDetailScreen(),
  TestScreen.route(): (context) => const TestScreen(),
};