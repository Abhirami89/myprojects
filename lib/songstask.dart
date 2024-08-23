import 'package:flutter/material.dart';

class Songsss extends StatelessWidget {
  Songsss({super.key});

  final List<String> song = [
    'https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/1e/ff/32/1eff3216-190d-6fd9-8f68-acbba846e6ee/8903431956026_cover.jpg/1200x1200bf-60.jpg',
    'https://c.saavncdn.com/881/Phir-Kabhi-Reprise-Hindi-2016-500x500.jpg',
    'https://c.saavncdn.com/271/Jawan-Theme-From-Jawan-English-2023-20230717040658-500x500.jpg',
    'https://i1.sndcdn.com/artworks-000450233955-ns5ca8-t1080x1080.jpg',
    'https://static.qobuz.com/images/covers/63/82/0886446258263_600.jpg'
  ];

  List<String> names = [
    'Chaleya',
    'phir kabhi',
    'Jawan theme',
    'Friends',
    'Arjith singh'
  ];

  List<String> titlesongs = [
    "https://as1.ftcdn.net/v2/jpg/03/03/48/46/1000_F_303484662_nlClyV5H7JXCsPDWTmr98urZun5wamID.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBBD_45EIe-6PR2_73JuVlbRfRA9Yk1Ahzg&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBBD_45EIe-6PR2_73JuVlbRfRA9Yk1Ahzg&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBBD_45EIe-6PR2_73JuVlbRfRA9Yk1Ahzg&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBBD_45EIe-6PR2_73JuVlbRfRA9Yk1Ahzg&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBBD_45EIe-6PR2_73JuVlbRfRA9Yk1Ahzg&s",
    "https://as1.ftcdn.net/v2/jpg/03/03/48/46/1000_F_303484662_nlClyV5H7JXCsPDWTmr98urZun5wamID.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBBD_45EIe-6PR2_73JuVlbRfRA9Yk1Ahzg&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBBD_45EIe-6PR2_73JuVlbRfRA9Yk1Ahzg&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBBD_45EIe-6PR2_73JuVlbRfRA9Yk1Ahzg&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBBD_45EIe-6PR2_73JuVlbRfRA9Yk1Ahzg&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiBBD_45EIe-6PR2_73JuVlbRfRA9Yk1Ahzg&s",
  ];

  List<Icon> iconns = [
    Icon(Icons.star),
    Icon(Icons.download),
    Icon(Icons.star),
    Icon(Icons.download),
    Icon(Icons.star),
    Icon(Icons.download),
    Icon(Icons.star),
    Icon(Icons.download),
    Icon(Icons.star),
    Icon(Icons.download),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
            child: Text(
          'RitMoic',
        )),
        backgroundColor: Colors.black,
        foregroundColor: Colors.pink,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Suggested Playlists',
                  style: TextStyle(color: Colors.pink),
                ),
              ],
            ),
            Container(
              height: 150,
              child: ListView.custom(
                  scrollDirection: Axis.horizontal,
                  childrenDelegate:
                      SliverChildListDelegate(List.generate(4, (index) {
                    return Card(
                      child: Image.network(fit: BoxFit.fill, titlesongs[index]),
                    );
                  }))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Recommended for you',
                  style: TextStyle(color: Colors.pink),
                ),
              ],
            ),
            ListTile(

                //   subtitle:Text(names[index]),
                //   title: Text(song[index]),
                //  trailing:(iconns[index]),

                )
          ],
        ),
      ),
    );
  }
}
