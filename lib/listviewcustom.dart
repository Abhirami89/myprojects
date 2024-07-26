import 'package:flutter/material.dart';

class Hiii extends StatelessWidget {
  const Hiii({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.custom(childrenDelegate:SliverChildBuilderDelegate((context,index)=>ListTile(
        title:Text('Custom'))) ),
    );
  }
}