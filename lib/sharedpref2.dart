import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Green extends StatefulWidget {
  const Green({super.key});

  @override
  State<Green> createState() => _GreenState();
}

class _GreenState extends State<Green> {
  late SharedPreferences matters;
  late String weed;

  @override
  void initState() {
    getting();
    super.initState();
  }

  void getting() async {
    matters = await SharedPreferences.getInstance();
    setState(() {
      weed = matters.getString('app')!;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(weed),
    );
  }
}
