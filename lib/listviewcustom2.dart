import 'package:flutter/material.dart';

class Hlo extends StatelessWidget {
  const Hlo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.custom(childrenDelegate:SliverChildListDelegate(
        // []
        List.generate(10, (index)
        {return Icon(Icons.adb_outlined) ;
        }
        ) ),
      )
    );
  }
}