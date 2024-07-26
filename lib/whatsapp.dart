import 'package:flutter/material.dart';
import 'package:flutter3/bottomsheet.dart';
import 'package:flutter3/demo2.dart';
import 'package:flutter3/listview2.dart';

import 'package:flutter3/sliver.dart';
import 'package:flutter3/status.dart';
import 'package:flutter3/task1.dart';

import 'textformfield.dart';

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(Icons.camera_enhance_outlined),
            Icon(Icons.search),
            Icon(Icons.chat)
          ],
          bottom: const TabBar(tabs: [
            Icon(Icons.people),
            Text('Chats'),
            Text('Status'),
            Text('Calls'),
          ]),
          title: const Text('WhatsApp'),
          backgroundColor: Colors.green,
        ),
        body: TabBarView(children: [
          Ruu(),
         
          Statuss2(),
          Cash(),
          CallScreen(),
  
        ]),
       floatingActionButton: const Icon(Icons.add,color: Color.fromARGB(255, 113, 22, 187), 
       
      ),

      

      )


    );
  }
}
