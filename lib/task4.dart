import 'package:flutter/material.dart';

class Cas extends StatelessWidget {
  const Cas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
          Center(
            child: Container(
            
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
           color: Color.fromARGB(255, 61, 12, 117), ),
            width: 250,
            height: 200,
          )),
          Positioned(top:250,left: 70,
          child: 
          Text('Savannah nguuyen',style: TextStyle(color: Colors.white),),
     
                  )   ,
                  
          Positioned(top:250,right: 80,
          child:  Text('Tap to pay',style: TextStyle(color: Colors.white))),
          
          Positioned(top:350,left: 70,
            child:Text('scan me',style: TextStyle(color: Colors.black),), 
            ),

Positioned(top: 370,left: 70,
  child: Icon(Icons.qr_code_scanner,size: 45,color: Colors.white,)),
            Positioned(top:300,right: 70,
              child: Image.network('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',height: 180,width: 100,))
                         
                  ])
    );
  }
}
