import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CustomListAnimation extends StatelessWidget {
  final int index;
  final dynamic child;
  const CustomListAnimation({Key? key, required this.index, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index,
      child: SlideAnimation(
        duration: const Duration(milliseconds: 2500),
        curve: Curves.fastLinearToSlowEaseIn,
        verticalOffset: -250,
        child: ScaleAnimation(
            duration: const Duration(milliseconds: 1500),
            curve: Curves.fastLinearToSlowEaseIn,
            child: child),
      ),
      delay: const Duration(milliseconds: 100),
    );
  }
}
