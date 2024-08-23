import 'package:flutter/material.dart';
import 'package:flutter3/carousal.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Draw extends StatefulWidget {
  const Draw({super.key});

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  List<String> names = [
    'Home page',
    'About page',
    'Settings page',
    'Camera page'
  ];

  var iconn = [
    Icon(Icons.menu),
    FaIcon(FontAwesomeIcons.i),
    FaIcon(FontAwesomeIcons.shield),
    FaIcon(FontAwesomeIcons.camera)
  ];

  void tileClick() {
    
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Car()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Abhirami Ajayakumar'),
            accountEmail: Text('abhi18092002@gmail.com'),
            currentAccountPicture: Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/009/209/212/small/neon-glowing-profile-icon-3d-illustration-vector.jpg'),
          

          
          ),
          Expanded(
            child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    selected: true,
                    selectedColor: Colors.amber,
                    splashColor: Color.fromARGB(255, 105, 11, 117),
                    onTap: tileClick,
                    trailing: (iconn[index]),
                    title: Text(names[index]),
                    
                  );
                }),
                
          ),
        ],
        
      )),
      appBar: AppBar(title: Text('hii')),
      body: Text('OPEN'),
    );
  }
}
