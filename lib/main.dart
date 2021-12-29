import 'package:flutter/material.dart';
import 'about_page.dart';
import 'bottom_navigation.dart';
import 'home_page.dart';
import 'settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const options = <NavOption>[
    NavOption(icon: Icons.info, label: 'About', widget: AboutPage()),
    NavOption(icon: Icons.home, label: 'Home', widget: HomePage()),
    NavOption(icon: Icons.settings, label: 'Settings', widget: SettingsPage()),
  ];

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigation(
        title: 'BottomNavigationBar Demo',
        options: options,
      ),
    );
  }
}
