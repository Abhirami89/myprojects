import 'package:flutter/material.dart';
import 'package:flutter3/taskss/screen1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class screens extends StatefulWidget {
  const screens({super.key});

  @override
  State<screens> createState() => _screensState();
}

class _screensState extends State<screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color.fromARGB(248, 230, 177, 3),
        // leading: Icon(Icons.arrow_back_ios),
        title: Text('Back'),
        leading: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 240, 205, 9)),
            onPressed: () {
              // Navigator.of(context).pop();
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Curvess()));
            },
            child: Icon(Icons.arrow_back_ios)),
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
              const Color.fromARGB(255, 240, 205, 9),
              const Color.fromARGB(255, 243, 22, 22)
            ])),
        child: Column(
          children: [
            Text(
              'Join us now!',
              style: TextStyle(fontSize: 35),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
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
              ),
            ),

            SizedBox(
                height: 60,
                width: 280,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Curvess()));
                  },
                  child: Text('Register'),
                )),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text('Social signup'),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 130),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaIcon(FontAwesomeIcons.facebook),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FaIcon(FontAwesomeIcons.google),
                  ),
                  FaIcon(FontAwesomeIcons.twitter),
                ],
              ),
            ),

            Spacer(),
            // SizedBox(height: 200,),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('already a member? '),
                  TextButton(
                      style: TextButton.styleFrom(
                          textStyle: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Curvess()));
                      },
                      child: Text('sign in')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
