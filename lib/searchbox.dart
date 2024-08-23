import 'package:flutter/material.dart';

class Searchboxxx extends StatefulWidget {
  const Searchboxxx({super.key});

  @override
  State<Searchboxxx> createState() => _SearchboxxxState();
}

class _SearchboxxxState extends State<Searchboxxx> {
  TextEditingController searchh = TextEditingController();

  List<String> abhi = ['Apple', 'Orange', 'Guava', 'Blueberry', 'Strawberry'];

  List<String> abhirami = [];
  @override
  void initState() {
    abhirami.addAll(abhi);
    super.initState();
  }

  void Searching(String box){
    setState(() {
      abhirami=abhi.where((value) => value.toLowerCase().contains(box.toLowerCase())).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextField(
                onChanged: Searching,
                controller: searchh,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: 'search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ),
          Expanded(  
            child:
            
          
              ListView.builder(
                itemCount: abhirami.length,
                itemBuilder: (BuildContext context, int index) {
            return ListTile(
              
              title: Text(abhirami[index]),
              
              textColor: Colors.pink,
            );
          }))
        ],
      ),
    );
  }
}
