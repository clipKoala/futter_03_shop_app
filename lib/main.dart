import 'package:flutter/material.dart';

import 'presentation/theme/brown_bright_theme.dart';

void main() => runApp(const StartPage());

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(),
      title: 'Learning App',
    );
  }
}