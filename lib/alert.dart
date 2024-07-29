import 'package:flutter/material.dart';

class Alertss extends StatefulWidget {
  const Alertss({super.key});

  @override
  State<Alertss> createState() => _AlertssState();
}

class _AlertssState extends State<Alertss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      TextButton(onPressed:(){
                        Navigator.of(context).pop();
                      }, child: Icon(Icons.add_business_rounded)),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.add_box_outlined))
                    ],
                    title: Text(
                      'STAY ALERT',
                      selectionColor: Colors.indigoAccent,
                    ),
                    content: Text(' be alert!'),
                    icon: Icon(Icons.alarm_on),
                    iconColor: Colors.deepOrange,
                  );
                });
          },
          child: Text('click')),
    );
  }
}
