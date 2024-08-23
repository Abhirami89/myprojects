import 'package:flutter/material.dart';

class Down extends StatefulWidget {
  const Down({super.key});

  @override
  State<Down> createState() => _DownState();
}

class _DownState extends State<Down> {
  String? peace;
  String? take;

  List<String> hii = ['cutlet', 'puffs', 'samosa', 'sweet porotta', 'halwa'];
  List<String> what = ['1', '2', '3', '4', '5', '6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Center(
              child: DropdownButton<String>(
                  hint: Text('Select'),
                  value: take,
                  items: what.map((String noo) {
                    return DropdownMenuItem<String>(value: noo, child: Text(noo));
                  }).toList(),
                  onChanged: (String? help) {
                    setState(() {
                      take = help;
                    });
                  }),
            ),
            Center(
              child: DropdownButton<String>(
                  hint: Text('Choose any'),
                  value: peace,
                  items: hii.map((String hello) {
                    return DropdownMenuItem<String>(
                        value: hello, child: Text(hello));
                  }).toList(),
                  onChanged: (String? google) {
                    setState(() {
                      peace = google;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
