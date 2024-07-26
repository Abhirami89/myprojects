

import 'package:flutter/material.dart';
import 'package:flutter3/gesturedetecture.dart';
import 'package:flutter3/inkwell.dart';
import 'package:flutter3/stack.dart';

class Kfc extends StatefulWidget {
  const Kfc({super.key});

  @override
  State<Kfc> createState() => _KfcState();
}

class _KfcState extends State<Kfc> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration:Duration(seconds: 1),
      child: Scaffold(
        
        appBar: AppBar(
          



          title: Text('fried chicken'),
          bottom: TabBar(tabs: [
            Icon(Icons.account_tree),
            Icon(Icons.access_alarm),
            Icon(Icons.add_box_sharp),
            
          ]
          ),
        ),
        body:TabBarView(children: [
          Gest(),Well(),Select(),
        ]),
      ),
    );
  }
}
