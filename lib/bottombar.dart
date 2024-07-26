import 'package:flutter/material.dart';
import 'package:flutter3/gesturedetecture.dart';
import 'package:flutter3/inkwell.dart';
import 'package:flutter3/stack.dart';
import 'package:flutter3/task1.dart';

class Blocks extends StatefulWidget {
  const Blocks({super.key});

  @override
  State<Blocks> createState() => _BlocksState();
}

class _BlocksState extends State<Blocks> {
  int index = 0;

  var screens = [
    Gest(),
    Well(),
    Select(),
    Cash(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: BottomNavigationBar(
          


       

          useLegacyColorScheme: true,
            currentIndex: index,
            onTap: (tappedindex) {
              setState(() {
                index = tappedindex;
              });
            },
            items: [
              BottomNavigationBarItem(
              
                backgroundColor: Colors.brown,
                  icon: Icon(Icons.add_shopping_cart_outlined),label: "abc"),
                  
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "abd",backgroundColor: Colors.lightGreen),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_tree),label: "abcd",backgroundColor: Color.fromARGB(255, 13, 161, 187)
                  ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_sharp),label: "abcde",backgroundColor: Colors.orange),
            ])


            );
  }
}
