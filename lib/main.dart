import 'package:flutter/material.dart';
import 'about_page.dart';
import 'home_page.dart';
import 'settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BottomNavigationBar Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    AboutPage(),
    SettingsPage(),
  ];

  BottomNavigationBarItem makeItem(String label, IconData icon) =>
      BottomNavigationBarItem(icon: Icon(icon), label: label);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: _pages.elementAt(_pageIndex)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (int index) {
          setState(() {
            _pageIndex = index;
          });
        },
        selectedItemColor: Colors.green,
        items: [
          makeItem('About', Icons.info),
          makeItem('Home', Icons.home),
          makeItem('Settings', Icons.settings),
        ],
      ),
    );
  }
}
