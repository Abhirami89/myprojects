import 'package:flutter/material.dart';

class Hell extends StatefulWidget {
  const Hell({super.key});

  @override
  State<Hell> createState() => _HellState();
}

class _HellState extends State<Hell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              trailing: Icon(Icons.accessibility_new),
              iconColor: Colors.orangeAccent,
              title: Text('HELLO WORLD'),
            );
          },
          separatorBuilder: (context, index) {
            if ((index+1)%3 == 2) {
              
              return ListTile(
              title: Text('STOP'),
              textColor: Colors.greenAccent,
        
              );
            } else {
              return SizedBox();
            }
          },
          itemCount: 15),
    );
  }
}
