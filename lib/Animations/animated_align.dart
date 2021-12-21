import 'package:flutter/material.dart';

class AlignAnimation extends StatefulWidget {
  const AlignAnimation({Key? key}) : super(key: key);

  @override
  State<AlignAnimation> createState() => _AlignAnimationState();
}

class _AlignAnimationState extends State<AlignAnimation> {
  bool ontapped = false;

  @override
  void initState() {
    super.initState();
    ontapped = !ontapped;
   
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Align Animation"),
      ),
      body: AnimatedAlign(
        duration: const Duration(seconds: 3),
        alignment: ontapped ? Alignment.centerLeft : Alignment.center,
        child: InkWell(
          onTap: () {
            setState(() {
              ontapped = !ontapped;
            });
          },
          child: const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("assets/avatar.jpg"),
          ),
        ),
      ),
    );
  }
}
