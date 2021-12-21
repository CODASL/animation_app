import 'package:animation_app/Animations/Hero%20Animation/full_Image.dart';
import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hero Animation"),
      ),
      body: Center(
        child: ListTile(
          leading: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const FullImage();
              }));
            },
            child: const Hero(
              tag: "1",
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/avatar.jpg"),
              ),
            ),
          ),
          title: const Text("John Doe"),
          trailing: const Icon(Icons.favorite),
        ),
      ),
    );
  }
}
