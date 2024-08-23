import 'package:flutter/material.dart';

class Newpro extends StatefulWidget {
  const Newpro({super.key});

  @override
  State<Newpro> createState() => _NewproState();
}

class _NewproState extends State<Newpro> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text('What songs do you like?'),
        
            ),
            body:GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            children: [
              
            ],
          
            ),
             
          ),
        
        ),
      ],
      
    );
    
  }
}
                                                                                                                                                                   