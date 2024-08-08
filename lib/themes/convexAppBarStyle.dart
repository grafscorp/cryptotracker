import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/widgets.dart';

class StyleConvexAppBar extends StyleHook {
  @override
  double get activeIconMargin => 5;

  @override
  double get activeIconSize => 65;

  @override
  double? get iconSize => 35;

  @override
  TextStyle textStyle(Color color, String? fontFamily) {
    return TextStyle(fontFamily: fontFamily, color: color);
  }
}
