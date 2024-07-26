import 'package:flutter/material.dart';

class Mobilescreen extends StatelessWidget {
  const Mobilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.lightGreenAccent,width: double.infinity,height: 200,
          ),
          Expanded(
            
            child: SingleChildScrollView(
              child: Column(
              
              
              children: [
                
                Container(
                  
                  width: double.infinity,
                  height: 300,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtdSiQY-OgZcERgnN8Ze6OxkUJ8L5nnWRlVw&s",fit: BoxFit.fill,)),
                  Text('hiiiiiiiiiiiiii'),
                Container(
                  width: double.infinity,
                  height: 300,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL_eLXjR6L5kuW7Bv-ny-o48UgwrBEW9-gAw&s",fit: BoxFit.fill,)),
                  Text('Hellooooooooooooo'),
                
              ],
                        ),
            ))
          
        ],
      ),
    );
  }
}