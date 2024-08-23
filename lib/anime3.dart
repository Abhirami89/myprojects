import 'package:flutter/material.dart';

class Animee3 extends StatefulWidget {
  const Animee3({super.key});

  @override
  State<Animee3> createState() => _Animee3State();
}

class _Animee3State extends State<Animee3> with TickerProviderStateMixin {
  Animation<double>? Anim;
  AnimationController? Anim2;
  Animation<double>? TheAnim;

  void Zooming() {
    Anim2!.forward();
  }

  void Zoomout() {
    Anim2!.reverse();
  }

  @override
  void initState() {
    Anim2 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    Anim = Tween<double>(begin: 50, end: 80).animate(Anim2!)
      ..addListener(() {
        setState(() {});
      });

    //  = AnimationController(vsync: this, duration: Duration(seconds: 1));
    TheAnim = Tween<double>(begin: 80, end: 50).animate(Anim2!)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
                child: Text(
              'Animeee',
              style: TextStyle(fontSize: Anim?.value),
            )),
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () => Zooming(),
                  child: Icon(Icons.ad_units_outlined))),
              ElevatedButton(onPressed: ()=>Zoomout(), child: Icon(Icons.abc))    
                  
                   
        ],
        
      ),
      
    );
  }
}
