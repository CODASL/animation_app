import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedTextStyle extends StatefulWidget {
  const AnimatedTextStyle({Key? key}) : super(key: key);

  @override
  State<AnimatedTextStyle> createState() => _AnimatedTextStyleState();
}

class _AnimatedTextStyleState extends State<AnimatedTextStyle> {
  TextStyle textStyle = const TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color: Colors.red,
      letterSpacing: 5);
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
                duration: const Duration(seconds: 2),
                style: isClicked
                    ? textStyle
                    : const TextStyle(color: Colors.black),
                child: const Text("This is Text")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isClicked = !isClicked;
                  });
                },
                child: const Text("Change Style"))
          ],
        ),
      ),
    );
  }
}
