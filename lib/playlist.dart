import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Suggested Playlist'),
          Padding(padding: EdgeInsets.all(1),
      
          ),
          
        
          
          AppBar(
            title: Center(child: Text('RitMoic',)),
            backgroundColor: Colors.black,
            foregroundColor: Colors.pinkAccent,
          ),
          
        ],
        
      ),
      
    );
  }
}