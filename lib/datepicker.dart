import 'package:flutter/material.dart';

class Dateee extends StatefulWidget {
  const Dateee({super.key});

  @override
  State<Dateee> createState() => _DateeeState();
}

class _DateeeState extends State<Dateee> {
  final datecontroll = TextEditingController();
  DateTime selects = DateTime.now();
  DateTime first = DateTime(1999);
  DateTime last = DateTime(2025);
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: datecontroll,
            decoration: InputDecoration(hintText: 'search'),
          ),
          ElevatedButton(onPressed: ()=>displayDatePicker(context), child: Text('choose date'))
        ],
      ),
    );
  }

  Future displayDatePicker(BuildContext context) async {
    var newdate = await showDatePicker(
        context: context, 
        initialDate: selects,
        firstDate: first, 
        lastDate: last);
    if (newdate != null) {
      setState(() {

         // Extract day, month, and year
      final day = newdate.day.toString().padLeft(2, '0');
      final month = newdate.month.toString().padLeft(2, '0');
      final year = newdate.year.toString();

      // Format the date as dd/MM/yyyy
      final formattedDate = '$day/$month/$year';
      datecontroll.text = formattedDate;
        // datecontroll.text = newdate.toLocal().toString().split('')[0];
      });
    }
    
  }
}
