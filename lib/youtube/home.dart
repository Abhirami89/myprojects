import 'package:flutter/material.dart';
import 'package:flutter3/youtube/Screen.dart';
import 'package:flutter3/youtube/screen2.dart';

class Homepageee extends StatelessWidget {
  const Homepageee({super.key});

  

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;

    if (screenwidth < 500) {
      return Mobilescreen();
    } else {
      return Desktopscreen();
    }
  }
}
