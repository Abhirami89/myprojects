import 'package:flutter/material.dart';

class Gkk extends StatelessWidget {
  Gkk({super.key});

  var size, width, height;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.orange,
            height:height*0.2,
            width: width*0.1,
          ),
          Container(
            color: Colors.lightGreenAccent,
            height:height/4,
            width: width/1,
          ),
          // Container(color: Colors.lightBlueAccent,height: 300,),
        ],
      ),
    );
  }
}
