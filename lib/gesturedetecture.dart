import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter3/carousal.dart';

class Gest extends StatefulWidget {
  const Gest({super.key});

  @override
  State<Gest> createState() => _GestState();
}

class _GestState extends State<Gest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GestureDetector(
        onDoubleTap: () =>
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Car())) ,
        
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlhdZ2fm7sGy1WN887tUQhx37JGrbEtOAS7g&s"))
      ) ;
      
    
    
  }
}