import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class Frenchtoast extends StatefulWidget {
  const Frenchtoast({super.key});

  @override
  State<Frenchtoast> createState() => _FrenchtoastState();
}

class _FrenchtoastState extends State<Frenchtoast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:MotionToast.success(description: Text('hlooo'),),
    );
  }
}