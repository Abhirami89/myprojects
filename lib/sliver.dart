import 'package:flutter/material.dart';

class Aaaaaaaaaa extends StatelessWidget {
  const Aaaaaaaaaa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Text('hiii'),
          leading: Icon(Icons.ac_unit),
          shadowColor: Colors.purple,
          backgroundColor: Color.fromRGBO(255, 171, 64, 1),
          pinned: false,
          primary: false,
          // floating: false,
          bottom: AppBar(
            title: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:  Colors.indigo,
              ),
              width: double.infinity,
              child:TextField(
                decoration: InputDecoration(hintText: 'NTHA',prefixIcon: Icon(Icons.access_alarm,color: Colors.teal,),),
              ) ),
          
          ),
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(
                child: Icon(Icons.account_tree_rounded),
              );
            }),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10))
      ]),
    );
  }
}
