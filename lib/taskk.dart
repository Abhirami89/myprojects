import 'package:flutter/material.dart';

class Taskk extends StatefulWidget {
  Taskk({super.key});

  @override
  State<Taskk> createState() => _TaskkState();
}

class _TaskkState extends State<Taskk> {
  List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7YgUcOytFHZNU8OpoC8uWX32dbwclfd3dNQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx8i56q3ftfhYv0rpuEmFanHAYtOGN0V8rrQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1kmYn8S4IrZy894RTK4VikT05q--_37MxTA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuVIJtfR0Q6WmmJ6oWyZxfX4vM9hZuV_yBlA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7YgUcOytFHZNU8OpoC8uWX32dbwclfd3dNQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKuTkpQSgUno-MMkd7GJWx1b-miF_mPidHnw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQxPobIqnNCKP1US5MsAyb3mqnQDxoqmGdGw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx8i56q3ftfhYv0rpuEmFanHAYtOGN0V8rrQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9abPM6z_36qC2-Aj1fEetEr5XNqmG442zDQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxITOnzHfRZXPH2F5bHdoaK5dVzefNuQfV3g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1kmYn8S4IrZy894RTK4VikT05q--_37MxTA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuVIJtfR0Q6WmmJ6oWyZxfX4vM9hZuV_yBlA&s',
  ];

  List<String> Names = [
    'Arjith singh',
    'shaan rahman',
    'Sreya Ghoshal',
    'Billie Eilish',
    'Arjith singh',
    'Sreya Ghoshal',
    'Billie Eilish',
    'Arjith singh',
    'Gopi sundar',
    'Arjith singh',
    'shaan rahman',
    'Sreya Ghoshal',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.white,
        ),
        actions: [
          Text(
            'skip',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 8,
            height: 8,
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              Text(
                'Choose 3 or more artists you love',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
           autofocus: false,
           style: TextStyle(backgroundColor: Colors.blueGrey),
           



              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 96, 125, 139),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'search',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection:Axis.vertical,
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(images[index]),
                      ),
                      Text(Names[index],style: TextStyle(color: Colors.white),)
                    ],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
            height: 40,
              width: double.infinity,
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.blueGrey,
                  foregroundColor:Colors.grey
                ),
                onPressed:(){} , child: Text('Submit',style: TextStyle(color: Colors.white),))
            
            ),
          ),
         
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
