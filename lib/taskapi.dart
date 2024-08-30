import 'dart:convert';


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter3/main.dart';

void main(){
  runApp(MyApp());
}


List<Auto> autoFromJson(String str) => List<Auto>.from(json.decode(str).map((x) => Auto.fromJson(x)));

String autoToJson(List<Auto> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Auto {
    String? name;
    String? realname;
    String? team;
    String? firstappearance;
    String? createdby;
    String? publisher;
    String? imageurl;
    String? bio;

    Auto({
        this.name,
        this.realname,
        this.team,
        this.firstappearance,
        this.createdby,
        this.publisher,
        this.imageurl,
        this.bio,
    });

    factory Auto.fromJson(Map<String, dynamic> json) => Auto(
        name: json["name"],
        realname: json["realname"],
        team: json["team"],
        firstappearance: json["firstappearance"],
        createdby: json["createdby"],
        publisher: json["publisher"],
        imageurl: json["imageurl"],
        bio: json["bio"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "realname": realname,
        "team": team,
        "firstappearance": firstappearance,
        "createdby": createdby,
        "publisher": publisher,
        "imageurl": imageurl,
        "bio": bio,
    };
}



class Abhii extends StatefulWidget {
  const Abhii({super.key});

  @override
  State<Abhii> createState() => _AbhiiState();
}

class _AbhiiState extends State<Abhii> {
  final Dio Abhi = Dio();
  List<Auto> come = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starr();
  }

  Future<void> starr() async {
    try {
      final response =
          await Abhi.get('https://www.simplifiedcoding.net/demos/marvel/');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        print('data,${response.data}');

        setState(() {
          // come.clear();
          come.addAll(data.map((postJson) => Auto.fromJson(postJson)).toList());
        });
      } else {
        print('error');
      }
    } catch (e) {
      print('error.$e');
    }
  }

  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('come'),
        ),
        body: 
        // Container(color: Colors.red,height: 200)
        ListView.builder(
            itemCount: come.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(come[index].imageurl!),),
                trailing:Text(come[index].publisher!),
                title: Text(come[index].name!),
                subtitle: Text(come[index].realname!),
              );
            }),
      ),
    );
  }
}
