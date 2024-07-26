import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: CallScreen(),
  ));
}

//whatsapp call screen

class CallScreen extends StatelessWidget {
  CallScreen({super.key});

  List<String> image = [
    'https://ashisheditz.com/wp-content/uploads/2023/11/attitude-girl-dp-download.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGEPx-bfV-OvHHH3IvSpNI4PQewfz6-bLh3Q&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrpg2q6jstcaLUo_oJH_DzJtf4TZQ4UClHCA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxAbuORzSEzAa23Z0vSZfTDbzfo0TXTIVlBg&s',
    'https://static.tnn.in/thumb/96423163/96423163.jpg?height=746&width=420&resizemode=76&imgsize=749642',
    'https://getimagehub.com/wp-content/uploads/2023/12/Girls-Whatsapp-Dp-with-Phone.webp',
    'https://getimagehub.com/wp-content/uploads/2023/12/Girls-Whatsapp-Dp-with-Phone.webp',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkx7MKWlJ53IVpHCSTOf4UixgZ16UXWQDqQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkx7MKWlJ53IVpHCSTOf4UixgZ16UXWQDqQ&s'
  ];
  List<String> text = [
    'Alan',
    'Ria',
    'Devika',
    'Tia',
    'Aswin',
    'Priya',
    'Eric',
    'Edward'
  ];
  // List<String> subtitles = [
  //   'Hi',
  //   'Whats up',
  //   'Hey',
  //   'Do u remember me',
  //   'metting at 10',
  //   'come ASAP',
  //   'I have bought a new car',
  //   'Come on',
  // ];
  List<IconData> callicons = [
    FontAwesomeIcons.video,
    FontAwesomeIcons.phone,
     FontAwesomeIcons.video,
    FontAwesomeIcons.phone,
     FontAwesomeIcons.video,
    FontAwesomeIcons.phone,
     FontAwesomeIcons.video,
    FontAwesomeIcons.phone
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return ListTile(
                  trailing: Icon(Icons.video_call),
                  leading: CircleAvatar(
                      radius: 20, backgroundImage: NetworkImage(image[index])),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text[index]),
                      // Text(subtitles[index]),
                    ],
                  ));
            }));
  }
}
