import 'package:flutter/material.dart';
import 'package:flutter3/taskss/screen2.dart';
import 'package:flutter3/taskss/screen3.dart';

class Curvess extends StatefulWidget {
  const Curvess({super.key});

  @override
  State<Curvess> createState() => _CurvessState();
}

class _CurvessState extends State<Curvess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 107, 243),
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Back'),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMXEAoZygHP5Pg9l-JYNq4-DpOV-A-KbPENw&s'),
            radius: 40,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              const Color.fromARGB(255, 33, 107, 243),
              Colors.purple
            ])),
        child: Column(
          children: [
            Text(
              'Lets get started?',
              style: TextStyle(fontSize: 35),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // borderRadius: BorderR
                    prefixIcon: Icon(Icons.email),
                    labelText: ('Email')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Icons.lock),
                    labelText: ('Password'),
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Radio(value: 'remember me', groupValue: , onChanged: onChanged)
                  Icon(Icons.circle_outlined),
                  Text('Remember me'),
                ],
              ),
            ),
            SizedBox(
                height: 50,
                width: 260,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Brand()));
                    },
                    child: Text('Login'))),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account? '),
                    
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.lightGreen)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => screens()));
                },
                child: Text('sign up'))
          ],
        ),
      ),
    );
  }
}
