import 'package:flutter/material.dart';

class Entha extends StatelessWidget {
  Entha({super.key});

  List<String> Food = ["Biriyani","Fried rice","Broasted","Fried chicken"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 5,

        children: List.generate(
            4,
            (index) => Card(
                  child: Center(child: Text(Food[index])),
                  color: Colors.teal,
                )),

        // [
        //   Container(
        //     color: Colors.amberAccent,
        //     height: 900,

        //   ),
        //   Container(color: Colors.lightGreen,height: 900,),
        // ],
        mainAxisSpacing: 10,
        crossAxisSpacing: 15,
      ),
    );
  }
}
