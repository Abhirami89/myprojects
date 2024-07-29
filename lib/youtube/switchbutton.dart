import 'package:flutter/material.dart';

class Switchesss extends StatefulWidget {
  const Switchesss({super.key});

  @override
  State<Switchesss> createState() => _SwitchesssState();
}

class _SwitchesssState extends State<Switchesss> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Switch(
        activeColor: Colors.deepPurple,
        inactiveThumbColor: Colors.indigo,
        activeTrackColor: Colors.green,
        inactiveTrackColor: Colors.lime,
        focusColor: Color.fromARGB(255, 214, 25, 25),
        autofocus: true,
          value: val,
          onChanged: (bool enable) {
            setState(() {
              val = enable;
            });
          }),
    );
  }
}
