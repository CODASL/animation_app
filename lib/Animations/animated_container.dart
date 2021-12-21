import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
  const ContainerAnimation({Key? key}) : super(key: key);

  @override
  State<ContainerAnimation> createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Animated container"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: isSelected ? 500 : 300,
            width: isSelected ? 150 : 300,
            //color: isSelected ? Colors.blue : Colors.green,
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue : Colors.green,
              shape: isSelected?BoxShape.circle:BoxShape.rectangle,
            ),
          ),
        ),
      ),
    );
  }
}
