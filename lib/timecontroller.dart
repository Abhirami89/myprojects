import 'package:flutter/material.dart';

class Timecontroll extends StatefulWidget {
  const Timecontroll({super.key});

  @override
  State<Timecontroll> createState() => _TimecontrollState();
}

class _TimecontrollState extends State<Timecontroll> {


  final newcontroller = TextEditingController();
 TimeOfDay newtime=TimeOfDay.now();


 Future Timee(BuildContext context)async{
  var timm=await showTimePicker(context: context, initialTime: newtime);
  if(timm!=null){
    newcontroller.text='${timm.hour}:${timm.minute}';
  }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: newcontroller,
            decoration: InputDecoration(hintText: 'Search'),
          ),
          ElevatedButton(onPressed: ()=>Timee(context),child: Icon(Icons.search))
        ],
      ),
    );
  }
  
  

}
