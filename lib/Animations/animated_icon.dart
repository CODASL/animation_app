import 'package:flutter/material.dart';

class IconAnimation extends StatefulWidget {
  const IconAnimation({Key? key}) : super(key: key);

  @override
  State<IconAnimation> createState() => _IconAnimationState();
}

class _IconAnimationState extends State<IconAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  _handleOnPress() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Icon"),
      ),
      body: Center(
        child: IconButton(
            iconSize: 150,
            onPressed: () => _handleOnPress(),
            icon: AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: _animationController)),
      ),
    );
  }
}
