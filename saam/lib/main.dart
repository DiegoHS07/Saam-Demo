import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saam/utils/devfest.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async{
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp]
  );

  Devfest.prefs = await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'SAAM Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
