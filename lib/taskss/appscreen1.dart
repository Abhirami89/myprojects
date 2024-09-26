import 'package:flutter/material.dart';
import 'package:flutter3/taskss/appscreen2.dart';
import 'package:lottie/lottie.dart';

class foodzy extends StatefulWidget {
  const foodzy({super.key});

  @override
  State<foodzy> createState() => _foodzyState();
}

class _foodzyState extends State<foodzy> {
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
                    padding: const EdgeInsets.only(top: 60),
                    child: Text(
                      'food',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.pinkAccent,
                          fontSize: 45),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
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
              'https://lottie.host/6902b853-2e76-47f0-a8a2-b1193d563be1/4LL8w22I3U.json',
              width: 1000,
              height: 300,
            ),
            Text(
              'Find Restaurants',
              style: TextStyle(fontSize: 25, fontStyle: FontStyle.normal),
            ),

            Text('share meals,not just memes'),
            SizedBox(height: 100),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 177, 120, 187)),
                    onPressed: () {},
                    child: Text('log in')))

            //  Align(alignment: FractionalOffset.bottomCenter,
            //  child: SizedBox(
            //   width: 200,
            //   height: 40,
            //    child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 192, 110, 137),foregroundColor: Colors.black),
            //     onPressed: (){}, child: Text("log in")),
            //  ),),
          ],
        ),
      ),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Container(
      //   height: 50,
      //   width: 350,
      //   margin: const EdgeInsets.all(10),
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       foregroundColor: Colors.black,
      //       backgroundColor: const Color.fromARGB(255, 175, 85, 115)),
      //     onPressed: () {},
      //     child: const Center(
      //       child: Text('log in'),
      //     ),
      //   ),
      // ),
    );
  }
}
