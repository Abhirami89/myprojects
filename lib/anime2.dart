import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Umma extends StatelessWidget {
  const Umma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Lottie.network('https://lottie.host/2cb86815-3e23-4dd6-adfc-b14ef248934a/coTcvjVKdM.json'),
    );
  }
}
