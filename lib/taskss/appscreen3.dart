import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Cravings extends StatefulWidget {
  const Cravings({super.key});

  @override
  State<Cravings> createState() => _CravingsState();
}

class _CravingsState extends State<Cravings> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Text(
                      'food',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.pinkAccent,
                          fontSize: 45),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Text(
                      'zy',
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontSize: 45),
                    ),
                  )
                ],
              ),
            ),
            LottieBuilder.network(
              'https://lottie.host/9537e928-4735-4f3e-aefe-9f2e1bbadbd3/rfssdqh5XK.json',
              width: 300,
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Express Delivery',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text('your parcel,our priority'),
            Text(
              'on Time delivery,everytime ',
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 350,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor:
                              const Color.fromARGB(255, 219, 144, 169),
                          foregroundColor: Colors.black),
                      onPressed: () {},
                      child: Text('log in')),
                ))
          ],
        ),
      ),
    );
  }
}
  

