import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KKKK extends StatelessWidget {
  const KKKK({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
            onTap: () {
               showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      
                      width: double.infinity,
                      height: 350,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // 
                            ListTile(leading: Icon(Icons.ac_unit),trailing: Text('share'),),
                           SizedBox(height: 60,),
                           
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Padding(padding: EdgeInsets.all(5)),
                                
                                
                             FaIcon(FontAwesomeIcons.telegram),
                            FaIcon(FontAwesomeIcons.photoFilm),
                            FaIcon(FontAwesomeIcons.twitter),
                            FaIcon(FontAwesomeIcons.threads),
                                                    
                            
                            
                              ],
                            ),
                           
                           SizedBox(width: 50,height:70 ,),

                           
                        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Padding(padding: EdgeInsets.all(5)),
                            
                              // SizedBox(width: 100,height: 200,),
                            
                                // Icon(Icons.ac_unit),
                                // Icon(Icons.access_alarms_outlined),
                                // Image.network(
                                //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkHrv72Ql-7LzUQXBeOFE4-edb5IpiWpeJAQ&s'),
                                    FaIcon(FontAwesomeIcons.instagram),
                                    FaIcon(FontAwesomeIcons.whatsapp),
                                    FaIcon(FontAwesomeIcons.googleDrive),
                                    FaIcon(FontAwesomeIcons.googlePay),
                                  
                                  
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                    
                    
                  });
            },
            child: Image.network(
                'https://cdn.pixabay.com/photo/2023/03/27/19/18/herons-7881512_1280.png')));
                
  }
}
