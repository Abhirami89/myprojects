import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class Joo extends StatelessWidget {
  const Joo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Lottie.asset('assets/animation/Animation - 1721893807746.json'),
    );
  }
}
