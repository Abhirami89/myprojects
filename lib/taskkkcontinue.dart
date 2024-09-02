import 'package:flutter/material.dart';

class Continn extends StatelessWidget {
  const Continn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Flavours of music',
                style: TextStyle(color: Color.fromARGB(255, 220, 215, 215)),
              ),
             
            ],
          ),
           Expanded(
                  child: GridView.builder(
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(color: Colors.blueGrey,),
                        );
                      }))
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
