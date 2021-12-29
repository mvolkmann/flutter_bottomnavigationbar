import 'package:flutter/material.dart';

class NavOption {
  final IconData icon;
  final String label;
  final Widget widget;

  const NavOption({
    required this.icon,
    required this.label,
    required this.widget,
  });
}

class BottomNavigation extends StatefulWidget {
  final String title; // for AppBar
  final List<NavOption> options;

  const BottomNavigation({
    Key? key,
    required this.title,
    required this.options,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => BottomNavigationState();
}

//TODO: Why can't this class be made private with a leading underscore?
class BottomNavigationState extends State<BottomNavigation> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var items = widget.options
        .map(
          (option) => BottomNavigationBarItem(
            icon: Icon(option.icon),
            label: option.label,
          ),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: widget.options[_pageIndex].widget),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (int index) {
          setState(() {
            _pageIndex = index;
          });
        },
        selectedItemColor: Colors.green,
        items: items,
      ),
    );
  }
}