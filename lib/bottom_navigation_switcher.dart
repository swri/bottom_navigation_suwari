import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class BottomNavigationSwitcher extends StatelessWidget {
  const BottomNavigationSwitcher({
    Key? key,
    required this.pageList,
  }) : super(key: key);

  final Widget pageList;

  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
      transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
          FadeThroughTransition(
        animation: primaryAnimation,
        secondaryAnimation: secondaryAnimation,
        child: child,
      ),
      child: pageList,
    );
  }
}
