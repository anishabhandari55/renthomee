
import 'package:cityrooms/pages/drawer.dart';
import 'package:cityrooms/pages/homepage.dart';
import 'package:cityrooms/pages/policies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'pages/loginpage.dart';



void main() async{
  /*WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // to makee sure that firebase is initialized before we run our app
   //this is asynchronized so we add async and await*/
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //to remove debug that appears on the screen initially
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'CrimsonRegular',
        primarySwatch: Colors.brown,
      ),
      home: LoginPage(),
      /*initialRoute: '/'
      routes{ MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),

      }*/
    );
  }
} 
