import 'package:flutter/material.dart';
import 'package:flutter3/gesturedetecture.dart';

class Well extends StatefulWidget {
  const Well({super.key});

  @override
  State<Well> createState() => _WellState();
}

class _WellState extends State<Well> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Gest())),
          child: Image(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1720543227828-ec5ae842633a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8"),
          )),
    );
  }
}
