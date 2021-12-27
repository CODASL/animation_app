import 'package:animation_app/Animations/routing%20animations/firstpage.dart';
import 'package:animation_app/Animations/routing%20animations/scale_transition.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is SecondPage"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, AnimatedScaleRouteTransition(const FirstPage()));
              },
              child: const Text("Back to  First Page"))),
    );
  }
}
