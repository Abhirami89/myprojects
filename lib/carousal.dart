import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Car extends StatefulWidget {
  const Car({super.key});

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: [
      Image.network("https://images.pexels.com/photos/21492/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      Image.network('https://media.istockphoto.com/id/1598193080/photo/young-couple-sitting-in-backyard-holding-a-cat-and-a-dog.jpg?s=612x612&w=is&k=20&c=S8vGLxvyRqG3KBQQeDqacdFRcCZ0Cj8QCwMx3ZaU8Xg='),

      Image.network("https://t3.ftcdn.net/jpg/04/81/85/46/240_F_481854656_gHGTnBscKXpFEgVTwAT4DL4NXXNhDKU9.jpg")
      ],
       options: CarouselOptions(
        autoPlay:true,
        autoPlayInterval: Duration(seconds: 1),
       viewportFraction: 0.4,
       reverse: true,
       enlargeCenterPage: true,
       animateToClosest: true,
       initialPage: 2,
       )
       ),
       
    );

  }
}
