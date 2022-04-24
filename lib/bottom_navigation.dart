import 'package:flutter/material.dart';

class BottomNavigationSuwari extends StatelessWidget {
  final int selectedIndex;
  final double? height;
  final Duration? animatedDuration;
  final TextStyle? textStyle;
  final IconThemeData? iconThemeData;
  final Color? backgroundColor;
  final Color? indicatorColor;
  final List<Widget> destinations;
  final void Function(int)? onDestinationSelected;
  final NavigationDestinationLabelBehavior? labelBehavior;

  const BottomNavigationSuwari({
    Key? key,
    required this.selectedIndex,
    required this.destinations,
    this.labelBehavior,
    this.onDestinationSelected,
    this.animatedDuration,
    this.height,
    this.textStyle,
    this.backgroundColor,
    this.indicatorColor,
    this.iconThemeData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        height: height,
        backgroundColor: backgroundColor,
        indicatorColor: indicatorColor,
        labelBehavior: labelBehavior,
        labelTextStyle: MaterialStateProperty.all(textStyle),
        iconTheme: MaterialStateProperty.all(iconThemeData),
      ),
      child: NavigationBar(
        animationDuration: animatedDuration,
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: destinations,
      ),
    );
  }
}
