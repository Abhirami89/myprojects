import 'package:flutter/material.dart';
import 'package:flutter3/sharedpref2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preff extends StatefulWidget {
  const Preff({super.key});

  @override
  State<Preff> createState() => _PreffState();
}

class _PreffState extends State<Preff> {
  TextEditingController newcontroller = TextEditingController();
  TextEditingController control = TextEditingController();

  late SharedPreferences matter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.search), hintText: 'enter name'),
            controller: newcontroller,
          ),
          TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.password), hintText: 'enter password'),
            controller: control,
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Green()));

              String come = newcontroller.text;
              String comeon = control.text;

              if (come != '' && comeon != '') {
                matter.setString('app', come);
                matter.setString('apps', comeon);
              }
              matter = await SharedPreferences.getInstance();
            },
            child: Text('click here'),
          ),
        ],
      ),
    );
  }
}
