import 'package:flutter/material.dart';

class AnimatedScaleRouteTransition extends PageRouteBuilder {
  final Widget page;
  AnimatedScaleRouteTransition(this.page)
      : super(
            pageBuilder: (context, animation, anotherAnimation) => page,
            transitionDuration: const Duration(microseconds: 700),
            reverseTransitionDuration: const Duration(microseconds: 200),
            transitionsBuilder: (context, animation, anotherAnimation, child) {
              animation = CurvedAnimation(
                parent: animation,
                curve: Curves.fastLinearToSlowEaseIn,
                reverseCurve: Curves.fastOutSlowIn,
              );

              return ScaleTransition(
                scale: animation,
                alignment: Alignment.center,
                child: page,
              );
            });
}

//Example for abstraction
abstract class Vehicle {
  final String vehicleModelNo;
  Vehicle({required this.vehicleModelNo});
}

class Audi extends Vehicle {
  Audi() : super(vehicleModelNo: "A8");
}
