import 'package:flutter/material.dart';

class SOOO extends StatefulWidget {
  const SOOO({super.key});

  @override
  State<SOOO> createState() => _SOOOState();
}

class _SOOOState extends State<SOOO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('store'),
      ),
    );
  }
}