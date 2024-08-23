import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'dart:convert';

Car carFromJson(String str) => Car.fromJson(json.decode(str));

String carToJson(Car data) => json.encode(data.toJson());

class Car {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Datum>? data;
  Support? support;

  Car({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        support:
            json["support"] == null ? null : Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "support": support?.toJson(),
      };
      
        static get(String s) {}
}

class Datum {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Datum({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}

class Support {
  String? url;
  String? text;

  Support({
    this.url,
    this.text,
  });

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}

class Excuse extends StatefulWidget {
  const Excuse({super.key});

  @override
  State<Excuse> createState() => _ExcuseState();
}

class _ExcuseState extends State<Excuse> {
  final Dio roll = Dio();
  List<Car> gone = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    talk();
  }

  Future<void> talk() async {
    try {
      final call = await Car.get('https://reqres.in/api/users?delay=3');
      if (call.statusCode == 200) {
        final List<dynamic> data = call.data;
        print('data,${call.data}');

        setState(() {
          gone.addAll(data.map((postJson) => Car.fromJson(postJson)).toList());
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
    // TODO: implement build
     
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('gone'),
      ),
      body: ListView.builder(
          itemCount: gone.length,
          itemBuilder: (context, index) {
            return ListTile(
              title:Text(gone[index].page.toString()) ,
              // subtitle:Text(gone[index].email!),
            );
          }),
    ),
  );
  }
}

