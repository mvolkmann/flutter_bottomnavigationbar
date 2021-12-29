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

class BottomNav extends StatefulWidget {
  final List<NavOption> options;
  final String title;

  const BottomNav({
    Key? key,
    required this.options,
    required this.title,
  }) : super(key: key);

  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
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
