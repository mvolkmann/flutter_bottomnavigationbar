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
  final List<NavOption> options;

  const BottomNavigation({
    Key? key,
    required this.options,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
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
        title: Text(widget.options[_pageIndex].label),
      ),
      body: Center(child: widget.options[_pageIndex].widget),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        items: items,
        onTap: (int index) {
          setState(() => _pageIndex = index);
        },
        selectedItemColor: Colors.green,
      ),
    );
  }
}
