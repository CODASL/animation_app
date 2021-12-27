import 'package:flutter/material.dart';

class SizeAnimation extends StatefulWidget {
  const SizeAnimation({Key? key}) : super(key: key);

  @override
  State<SizeAnimation> createState() => _SizeAnimationState();
}

class _SizeAnimationState extends State<SizeAnimation> {
  double width = 0.0;

  @override
  void initState() {
    super.initState();
    setState(() {
      width = double.infinity;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Size Animation"),
      ),
      body: Center(
        child: AnimatedSize(
          duration: const Duration(seconds: 5),
          child: Container(
            height: screenSize.height,
            width: width,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
