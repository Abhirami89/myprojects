import 'package:flutter/material.dart';
import 'package:flutter3/Scrollview.dart';
import 'package:flutter3/Songstask.dart';
import 'package:flutter3/alert.dart';
import 'package:flutter3/anime2.dart';
import 'package:flutter3/anime3.dart';
import 'package:flutter3/animelottie3.dart';

import 'package:flutter3/bottombar.dart';
import 'package:flutter3/bottomsheet.dart';
import 'package:flutter3/carousal.dart';
import 'package:flutter3/datepicker.dart';
import 'package:flutter3/demo.dart';
import 'package:flutter3/demo2.dart';
import 'package:flutter3/dioapi.dart';
import 'package:flutter3/drawer.dart';
import 'package:flutter3/dropdown.dart';
import 'package:flutter3/gesturedetecture.dart';
import 'package:flutter3/googlemaps.dart';
import 'package:flutter3/gridbuilder.dart';
import 'package:flutter3/gridcount.dart';
import 'package:flutter3/gridextend.dart';
import 'package:flutter3/gridviewcustom.dart';
import 'package:flutter3/imagepicker.dart';
import 'package:flutter3/imgpicker.dart';
import 'package:flutter3/inkwell.dart';
import 'package:flutter3/listview.dart';
import 'package:flutter3/listview2.dart';
import 'package:flutter3/listviewcustom.dart';
import 'package:flutter3/listviewcustom2.dart';
import 'package:flutter3/listviewseperated.dart';
import 'package:flutter3/loadinganime.dart';
import 'package:flutter3/mediaquery.dart';
import 'package:flutter3/motiontoast.dart';
import 'package:flutter3/motiontoast.dart';
import 'package:flutter3/newanime.dart';
import 'package:flutter3/newapi.dart';
import 'package:flutter3/newtask.dart';
import 'package:flutter3/playlist.dart';
import 'package:flutter3/screen1.dart';
import 'package:flutter3/screen2.dart';
import 'package:flutter3/searchbox.dart';
import 'package:flutter3/sharedpref2task2.dart';
import 'package:flutter3/sharedpreference.dart';
import 'package:flutter3/sharedpreftask.dart';
import 'package:flutter3/sliver.dart';
import 'package:flutter3/snackbar.dart';
import 'package:flutter3/stack.dart';
import 'package:flutter3/status.dart';
import 'package:flutter3/tabbar.dart';
import 'package:flutter3/task1.dart';
import 'package:flutter3/task2.dart';
import 'package:flutter3/taskapi.dart';
import 'package:flutter3/taskk.dart';
import 'package:flutter3/taskkkcontinue.dart';
import 'package:flutter3/taskss/screen1.dart';
import 'package:flutter3/taskss/screen2.dart';
import 'package:flutter3/taskss/screen3.dart';

import 'package:flutter3/textformfield.dart';
import 'package:flutter3/timecontroller.dart';
import 'package:flutter3/whatsapp.dart';
import 'package:flutter3/youtube/Screen.dart';
import 'package:flutter3/youtube/home.dart';
import 'package:flutter3/youtube/radiobutton.dart';
import 'package:flutter3/youtube/screen2.dart';
import 'package:flutter3/youtube/switchbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:Curvess()

        
        );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  ValueNotifier<int> _counter = ValueNotifier(0);

  void _incrementCounter() {
    _counter.value = _counter.value + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ValueListenableBuilder(
              valueListenable: _counter,
              builder: (BuildContext context, int value, Widget? child) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
