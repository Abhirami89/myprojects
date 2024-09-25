import 'package:flutter/material.dart';
import 'package:flutter3/taskss/screen3.dart';

class Homepages extends StatefulWidget {
  const Homepages({super.key});

  @override
  State<Homepages> createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[Colors.greenAccent,Colors.blueAccent]),
          
        ),
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>screens()));
        }, child: Icon(Icons.add)),
      ),
      
    );
  }
}