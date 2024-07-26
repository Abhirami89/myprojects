import 'package:flutter/material.dart';

class Desktopscreen extends StatelessWidget {
  const Desktopscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                  child: Image.network(
                "https://5.imimg.com/data5/SELLER/Default/2022/4/RM/PV/DY/11929731/nature-wallpaper-500x500.jpg",
                fit: BoxFit.fill,
              
              )),
              Expanded(child: ListView.builder(itemBuilder: (context, index) {
                return
                Container(
                    child: Image.network(
                      fit: BoxFit.cover,
                  "https://cdn.magicdecor.in/com/2023/02/29230525/image-1683286986-627-710x488.jpg",
                  width: double.infinity,
                  height: 200,
                ));
              }))
            ],
          )),
          Container(color: Colors.purple,width: 200,padding: EdgeInsets.all(5),)
        ],
      ),

    );
  }
}
