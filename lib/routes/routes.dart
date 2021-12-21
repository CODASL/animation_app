import 'package:animation_app/Animations/animated_align.dart';
import 'package:animation_app/Animations/animated_container.dart';
import 'package:animation_app/Animations/animated_crossfade.dart';
import 'package:animation_app/Animations/Hero%20Animation/hero.dart';
import 'package:animation_app/home.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  "/": (context) => const Home(),
  "/animated_container": (context) => const ContainerAnimation(),
  "/animated_crossFade": (context) => const CrossFadeAnimation(),
  "/hero_animation": (context) => const HeroAnimation(),
  "/align_animation":(context) => const AlignAnimation(),
};
