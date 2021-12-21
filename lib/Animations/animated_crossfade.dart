import 'package:flutter/material.dart';

class CrossFadeAnimation extends StatefulWidget {
  const CrossFadeAnimation({Key? key}) : super(key: key);

  @override
  State<CrossFadeAnimation> createState() => _CrossFadeAnimationState();
}

class _CrossFadeAnimationState extends State<CrossFadeAnimation> {
  bool ontapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("CrossFade Animation"),
      ),
      body: Center(
        child: AnimatedCrossFade(
          duration: const Duration(milliseconds: 500),
          crossFadeState:
              ontapped ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          firstChild: IconButton(
              onPressed: () {
                setState(() {
                  ontapped = !ontapped;
                });
              },
              icon: const Icon(
                Icons.menu,
                size: 40,
              )),
          secondChild: IconButton(
            onPressed: () {
              setState(() {
                ontapped = !ontapped;
              });
            },
            icon: const Icon(
              Icons.done,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
