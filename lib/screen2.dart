import 'package:flutter/material.dart';

class Tskkk extends StatefulWidget {
  Tskkk({super.key});

  @override
  State<Tskkk> createState() => _TskkkState();
}

class _TskkkState extends State<Tskkk> {
  List<String> names = [
    'Chocolate Drink',
    'Coffee',
    'Concentrated Fruit Drinks',
    'Juices & Carbonates',
    'Malt Drink',
    'Milk & Creamers',
    'RTD & Beverages',
    'Sport & Energy Drinks',
    'Tea',
    'Waters',
  ];
  List<IconData> sidee = [
    Icons.arrow_forward_ios,
     Icons.arrow_forward_ios,
    
     Icons.arrow_forward_ios,
     Icons.arrow_forward_ios,
     Icons.arrow_forward_ios,
     Icons.arrow_forward_ios,
     Icons.arrow_forward_ios,
     Icons.arrow_forward_ios,
     Icons.arrow_forward_ios,
     Icons.arrow_forward_ios,
    
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading:
      //   title: Text(
      //     'Cold Drinks',
      //     style: TextStyle(fontSize: 18),
      //   ),
        
          
          
        
      //  
      // ),
      body: Stack(
        children: [

          Column(
            children: [
              // Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO5HG-xZtZiZ6IB-J1vLCWQhB8OixhlV-IVA&s',
              // fit: BoxFit.fill,
              // ),
              Container(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgnyw5jvam1CfUsVkRXInS8IHIDQcogcq2KA&s',
                  fit: BoxFit.fill,
                ),
                color: const Color.fromARGB(255, 52, 185, 145),
                height: 200,
              ),
              Expanded(
                  child: Container(
                color: const Color.fromARGB(255, 59, 91, 105),
                width: 470,
                height: 300,
              ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 140),
            child: 
                Container(
                  // padding: EdgeInsets.all(10),
                  decoration:BoxDecoration(
                     color: Colors.white,
                   
                     borderRadius: BorderRadius.circular(8)

                    ),
                  height: 500,
                  width: 450,
                 
                  child:    ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return  ListTile(
                  leading: Text(names[index]),
                  trailing: Icon(sidee[index]),
                );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                    itemCount: names.length),
                ),
             
               
              
          ),
          SizedBox(
            
            child: Padding(
              padding: const EdgeInsets.only(left:8,right: 10,top: 17),
              child: Row(
                       children: [
                       
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.arrow_back,color:Colors.white,),
              ),
              Text('Cold Drinks',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
              Expanded(child:SizedBox() ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.favorite_border_outlined,color: Colors.white,),
              )
                     
              
                       ],   
              ),
            ),
          ),
        ],
      ),

      //  ListView.separated(
      //   itemCount: names.length,
      //   itemBuilder: (context, index) {
      //     return SizedBox(
      //       child: ListTile(
      //         leading: Text(names[index]),
      //         trailing: Icon(sidee[index]),
      //         // trailing: (sidee[index]),
      //       ),
      //     );
      //   },
      //   separatorBuilder: (BuildContext context, int index) {
      //     return Divider();
      //   },
      // ),
    );
  }
}
