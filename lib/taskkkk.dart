import 'package:flutter/material.dart';

class Tskkk extends StatefulWidget {
  Tskkk({super.key});

  @override
  State<Tskkk> createState() => _TskkkState();
}

class _TskkkState extends State<Tskkk> {
  List<String> names = [
    'Chocolate Drink',
    'Coffee',
    'Concentrated Fruit Drinks',
    'Juices & Carbonates',
    'Malt Drink',
    'Milk & Creamers',
    'RTD & Beverages',
    'Sport & Energy Drinks',
    'Tea',
    'Waters',
  ];
  List<IconData> sidee = [
    Icons.arrow_back_ios_new,
    Icons.arrow_back_ios_new,
    Icons.arrow_back_ios_new,
    Icons.arrow_back_ios_new,
    Icons.arrow_back_ios_new,
    Icons.arrow_back_ios_new,
    Icons.arrow_back_ios_new,
    Icons.arrow_back_ios_new,
    Icons.arrow_back_ios_new,
    Icons.arrow_back_ios_new,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(
      //   leading: Icon(Icons.arrow_back_ios_new_sharp),
      //   title: Text(
      //     'Cold Drinks',
      //     style: TextStyle(fontSize: 18),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   flexibleSpace: Stack(
      //     fit: StackFit.expand,
      //     children: [
      //       Image.network(
      //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO5HG-xZtZiZ6IB-J1vLCWQhB8OixhlV-IVA&s',
      //         fit: BoxFit.fill,
      //       )
      //     ],
      //   ),
      //   actions: [
      //     Icon(Icons.favorite_outline_sharp),
      //   ],
      // ),
      body:Column(
        children: [
          Container(color: Colors.white,
          
          )
          
        ],
      ),
      
      
      //  ListView.separated(
      //   itemCount: names.length,
      //   itemBuilder: (context, index) {
      //     return SizedBox(
      //       child: ListTile(
      //         leading: Text(names[index]),
      //         trailing: Icon(sidee[index]),
      //         // trailing: (sidee[index]),
      //       ),
      //     );
      //   },
      //   separatorBuilder: (BuildContext context, int index) {
      //     return Divider();
      //   },
      // ),
    );
  }
}
