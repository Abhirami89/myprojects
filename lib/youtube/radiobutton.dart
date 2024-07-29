import 'package:flutter/material.dart';

class Radiooo extends StatefulWidget {
  const Radiooo({super.key});

  @override
  State<Radiooo> createState() => _RadioooState();
}

class _RadioooState extends State<Radiooo> {
  String? hide;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      
          Text('1. select a fruit',style: TextStyle(),),
          RadioListTile(
            
             
              title:  Text('apple'),
              value: "num",
              groupValue: hide,
              onChanged: (tap) {
                setState(() {
                  hide = tap;
                  print('selected file is apple');
                });
              }),
          RadioListTile(
              title: Text('cauliflower'),
              value: "Num2",
              groupValue: hide,
              onChanged: (tap2) {
                setState(() {
                  hide = tap2;
                  print('selected file is cauliflower');
                });
              }),
          RadioListTile(
              title: Text('cabbage'),
              value: 'num3',
              groupValue: hide,
              onChanged: (tap) {
                setState(() {
                  hide = tap;
                  print('selected file is cabbage');
                });
              }),
          RadioListTile(
              title: Text('radish'),
              value: 'num4',
              groupValue: hide,
              onChanged: (tap) {
                setState(() {
                  hide = tap;
                  print('selected file is radish');
                });
              })
        ],
      ),
    );
  }
}
