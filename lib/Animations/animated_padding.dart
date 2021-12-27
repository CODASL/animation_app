import 'package:flutter/material.dart';

class PaddingAnimation extends StatefulWidget {
  const PaddingAnimation({Key? key}) : super(key: key);

  @override
  State<PaddingAnimation> createState() => _PaddingAnimationState();
}

class _PaddingAnimationState extends State<PaddingAnimation> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding"),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 350,
          color: Colors.red,
          child: AnimatedPadding(
            duration: const Duration(seconds: 1),
            padding:
                isTapped ? const EdgeInsets.all(70) : const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                setState(() {
                  isTapped = !isTapped;
                });
              },
              child: Container(
                height: 400,
                width: 350,
                color: Colors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
