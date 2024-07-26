import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Select extends StatelessWidget {
  const Select({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      children: [
        
          
            Center(
              child: Container(color: Colors.orangeAccent,width: 500,height: 250,)),
           Positioned(top:250,left: 100,
           child: 
             Container(color: const Color.fromARGB(255, 64, 77, 255),height: 100,width: 170,)
           ),
          Positioned(
            top:250,left: 170,bottom: 180,
            child: Text('hello'))

          ],
        ),
      
    );
  }
}
