import 'package:flutter/material.dart';

class Prasad extends StatelessWidget {
  const Prasad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,crossAxisSpacing: 10,mainAxisSpacing: 10),
              
          itemBuilder: (context, int index) {
            
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.amberAccent,
              ),
            );
        }),
    );
  }
}
