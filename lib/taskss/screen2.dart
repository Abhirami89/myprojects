import 'package:flutter/material.dart';
import 'package:flutter3/taskss/screen1.dart';
import 'package:flutter3/taskss/screen3.dart';

class Brand extends StatefulWidget {
  const Brand({super.key});

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(

        
      //   backgroundColor: Colors.deepPurpleAccent,
      //   title: Center(
      //     child: Padding(
      //       padding: const EdgeInsets.only(right: 1, left: 2),
      //       child: Text(
      //         'Brand Name',
      //         style: TextStyle(fontSize: 25),
      //       ),
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(left: 45, right: 50),
      //       child: Image.network(
      //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKEBcaPpd8LCtLtNJxS_GcS5GRPHnDTbEF1A&s'),
      //     )
      //   ],
      // ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomLeft,
                colors: [Colors.deepPurpleAccent, Colors.amberAccent])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Brand name',style: TextStyle(fontSize: 40,color: Colors.amberAccent
                  ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKEBcaPpd8LCtLtNJxS_GcS5GRPHnDTbEF1A&s',width: 40,height: 170,),
              ),
                ],
              ),
            ),
            
            Divider(
              thickness: 1,
              color: Colors.black,
              
            ),
       

            Text(
              'Some text of your choice.',
              style: TextStyle(fontSize: 38),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 189, 199, 92)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Curvess()));
                      },
                      child: Text('login'))),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lime),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => screens()));
                      },
                      child: Text('Register'))),
            )
          ],
        ),
      ),
    );
  }
}
