import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  /// Wraps a widget in a Center.
  Center center() {
    Widget? child = this;
    //return Expanded(child: Center(child: child));
    return Center(child: child);
  }

  /// Wraps a widget in a SizedBox with a given width and height.
  SizedBox size({required double width, required double height}) {
    Widget? child = this;
    return SizedBox(child: child, height: height, width: width);
  }

  /// Wraps a widget in a Padding with a given horizontal padding.
  Padding hPad(double size) {
    return Padding(
        child: this, padding: EdgeInsets.symmetric(horizontal: size));
  }

  /// Wraps a widget in a Padding with given padding on all sides.
  Padding pad(double size) {
    return Padding(child: this, padding: EdgeInsets.all(size));
  }

  /// Wraps a widget in a Padding with a given horizontal padding.
  Padding vPad(double size) {
    return Padding(child: this, padding: EdgeInsets.symmetric(vertical: size));
  }
}

extension WidgetListExtension<Widget> on List<Widget> {
  /// Adds a SizedBox with a given width and no height
  /// between all Widgets in the List.
  List<Widget> hSpacing(double size) {
    for (int i = length - 1; i > 0; i--) {
      insert(i, SizedBox(width: size, height: 0) as Widget);
    }
    return this;
  }

  /// Adds a SizedBox with the same width and height
  /// between all Widgets in the List.
  List<Widget> spacing(double size) {
    for (int i = length - 1; i > 0; i--) {
      insert(i, SizedBox(width: size, height: size) as Widget);
    }
    return this;
  }

  /// Adds a SizedBox with a given height and no width
  /// between all Widgets in the List.
  List<Widget> vSpacing(double size) {
    for (int i = length - 1; i > 0; i--) {
      insert(i, SizedBox(width: 0, height: size) as Widget);
    }
    return this;
  }
}
