import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Hey extends StatefulWidget {
  const Hey({super.key});

  @override
  State<Hey> createState() => _HeyState();
}

class _HeyState extends State<Hey> {
  File? _profilepic;

  Future<void>profileimage()async{
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        padding: EdgeInsets.all(6),
        child: Column(
     
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('select from gallery'),
              onTap:(){
                 getimages(ImageSource.gallery);
                  Navigator.pop(context);
              } ,
            ),
            ListTile(
              leading: Icon(Icons.browse_gallery),
              title: Text('take a picture'),
              onTap:(){
                getimages(ImageSource.camera);
                Navigator.pop(context);
              } ,
              
              

            )
          ],
        ),
      );
    });
  }


  Future<void>getimages(ImageSource source)async{
    final pic=ImagePicker();
    final pic2=await pic.pickImage(source: source);

if(pic2!=null){
  setState(() {
    _profilepic=File(pic2.path);
  });
}
   

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('choose an image'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            GestureDetector(
              onTap:profileimage,
              child: _profilepic == null
              ?CircleAvatar(
                radius: 70,
                backgroundColor: Colors.limeAccent,
                child: Icon(Icons.camera_alt_outlined),
              )
              :CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(Icons.camera_alt_rounded),
              ),
            ),
            Padding(padding: EdgeInsets.all(6),
            child: FloatingActionButton(
              onPressed:profileimage,
            child: Icon(Icons.camera_alt),
            
            ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
