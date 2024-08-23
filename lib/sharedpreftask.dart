import 'package:flutter/material.dart';
import 'package:flutter3/sharedpref2task2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Fern extends StatefulWidget {
  const Fern({super.key});

  @override
  State<Fern> createState() => _FernState();
}

class _FernState extends State<Fern> {
  TextEditingController grass = TextEditingController();
  late SharedPreferences news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Enter name'),
            controller: grass,
          ),
          ElevatedButton(
              onPressed: () async {
             
                String hold = grass.text;
                 news = await SharedPreferences.getInstance();

                if (hold != '') {
                  news.setString('help', hold);
                }
               

                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Keep()));
              },
              child: Icon(Icons.search))
        ],
      ),
    );
  }
}
