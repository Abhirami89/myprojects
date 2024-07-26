import 'package:flutter/material.dart';

class U7 extends StatelessWidget {
  const U7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SingleChildScrollView(
        child: Column(
        
          children: [
            
            
            
            Container(
              
              color: Color.fromARGB(255, 16, 14, 156,),
              height: 400,
            ),
              
               Container(color: Colors.lightGreen,height: 400,),
               Container(color: Colors.pink,height: 400,)
              
           
          ],
        ),
      ),
    );
  }
}
