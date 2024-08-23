import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Keep extends StatefulWidget {
  const Keep({super.key});

  @override
  State<Keep> createState() => _KeepState();
}

class _KeepState extends State<Keep> {
  late SharedPreferences newss;
  late String gone;

  @override
  void initState() {
    sell();
    super.initState();
  }

  void sell() async {
    newss = await SharedPreferences.getInstance();
    setState(() {
      gone = newss.getString('help')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(gone),
    );
  }
}
