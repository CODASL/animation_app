

import 'package:animation_app/Animations/animated_align.dart';
import 'package:animation_app/Animations/animated_container.dart';
import 'package:animation_app/Animations/animated_crossfade.dart';
import 'package:animation_app/Animations/Hero%20Animation/hero.dart';
import 'package:animation_app/Animations/animated_default_textstyle.dart';
import 'package:animation_app/Animations/animated_icon.dart';
import 'package:animation_app/Animations/animated_padding.dart';
import 'package:animation_app/Animations/routing%20animations/firstpage.dart';
import 'package:animation_app/Animations/splash_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  "/": (context) => const SplashScreen(),
  "/animated_container": (context) => const ContainerAnimation(),
  "/animated_crossFade": (context) => const CrossFadeAnimation(),
  "/hero_animation": (context) => const HeroAnimation(),
  "/align_animation":(context) => const AlignAnimation(),
  "/animated_textstyle":(context) => const AnimatedTextStyle(),
  "/animated_icon":(context) => const IconAnimation(),
  "/animated_padding":(context)=> const PaddingAnimation(),
  "/routing_animations": (context)=> const FirstPage(),
};
