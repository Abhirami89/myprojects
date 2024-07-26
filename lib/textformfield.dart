import 'package:flutter/material.dart';

class Ruu extends StatelessWidget {
  Ruu({super.key});

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
            key: _formkey,
            child: TextFormField(validator: (value) {
              if (value == null || value.isEmpty) {
                return "invalid field";
              } else if (value.length < 4) {
                return 'must need 4 letters';
              } else if (!value.contains(RegExp('[A-Z]'))) {
                return 'must need an upper case';
              } else if (!value.contains(RegExp('[#,% ]'))) {
                return 'must contain any spcl characters';
              }
            }),
          ),
          ElevatedButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Icon(Icons.add_alarm_rounded)));
                }
                ;
              },
              child: Text('sign in')),
        ],
      ),
    );
  }
}
