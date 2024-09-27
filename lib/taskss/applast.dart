import 'package:flutter/material.dart';

import 'package:flutter3/taskss/appscreen1.dart';
import 'package:flutter3/taskss/appscreen2.dart';
import 'package:flutter3/taskss/appscreen3.dart';

class lastt extends StatefulWidget {
  const lastt({super.key});

  @override
  State<lastt> createState() => _lasttState();
}

class _lasttState extends State<lastt> {
  PageController controll = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageView(
        controller: controll,
        children: [foodzy(), screen2(), Cravings(),
        
        ],
      ),
    );
  }
}
