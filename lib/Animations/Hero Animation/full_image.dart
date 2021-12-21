// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FullImage extends StatelessWidget {
  const FullImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        
        tag: "1",
        child: Image.asset(
          "assets/avatar.jpg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
