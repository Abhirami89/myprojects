import 'package:flutter/material.dart';

class Blush extends StatelessWidget {
  const Blush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent:400  
      ,children: [
Card(child: Text('PRASAD'),color: Colors.deepPurple,),
Card(child:Text('MANDAN') ,color: Colors.amber,),
Card(child: Text('POTTAN'),color: Colors.blueAccent,)
      ],),
      
    );
  }
}
