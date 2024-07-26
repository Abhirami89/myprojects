import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Iooo extends StatelessWidget {
  const Iooo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: LoadingAnimationWidget.fourRotatingDots(color: Color.fromARGB(115, 51, 206, 89), size: 400,
    )

    );
  }
}
