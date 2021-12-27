import 'package:animation_app/Animations/routing%20animations/animated_size.dart';
import 'package:animation_app/Animations/routing%20animations/scale_transition.dart';
import 'package:animation_app/Animations/routing%20animations/secondpage.dart';
import 'package:animation_app/Animations/routing%20animations/slide_transition.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routing Animations"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                  context, AnimatedScaleRouteTransition(const SecondPage()));
            },
            title: const Text("Scale Transition"),
          ),
          const Divider(color: Colors.black),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, AnimatedSlideTransition(page: const SecondPage()));
            },
            title: const Text("Slide Transition"),
          ),
          const Divider(color: Colors.black),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const SizeAnimation();
              }));
            },
            title: const Text("Animated Size"),
          ),
          const Divider(color: Colors.black),
        ],
      ),
    );
  }
}
