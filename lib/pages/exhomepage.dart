

import 'dart:js';

import 'package:cityrooms/main.dart';
import 'package:cityrooms/pages/details.dart';
import 'package:cityrooms/widgetscreated/catalogue.dart';

import 'package:cityrooms/pages/Room1.dart';
import 'package:cityrooms/pages/drawer.dart';
import 'package:flutter/material.dart';
import 'package:cityrooms/widgetscreated/reusableWidgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade100,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Rent Home",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize:30,
            fontFamily: "Lobster",
            fontWeight: FontWeight.bold,
          ),
          ),
          actions: [Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              child: Icon(Icons.person)),
          )],
          ),
        drawer: MyDrawer(),
        body: Container(
          
              width: double.infinity,
              decoration: BoxDecoration(
               color : Colors.blueGrey.shade100),
                  child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: SizedBox(
                        height: 35,
                        child: customTextField("Search", Icons.search, false)),
                    ),
                        
                  
                  /*SizedBox(
                    height: 10,
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [containerList("images/apartment2.jpg", (){}), containerList("images/room1.jpg", (){})], ) ),
                      SizedBox(
                    height: 10,
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [details("Apartment", "Pokhara", 33586, 12500), details("Room", "Chitwan", 33587, 5000)]),),
                      SizedBox(
                    height: 10,
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [containerList("images/apartment2.jpg", (){}), containerList("images/room1.jpg", (){})], ) ),
                      SizedBox(
                    height: 10,
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [containerList("images/apartment2.jpg", (){}), containerList("images/room1.jpg", (){})], ) ),
                      SizedBox(
                    height: 10,
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [containerList("images/apartment2.jpg", (){}), containerList("images/room1.jpg", (){})], ) ),
                  
                  /*cotainerList("images/apartment2.jpg", (){}),
                  details("Apartment", "Nawalpur", 34587, 13000),
                  cotainerList("images/room1.jpg", (){}),
                  details("Room", "Pokhara", 34587, 5000),
                  cotainerList("images/apartment3.jpg", (){}),
                  details("Apartment", "Banke", 34587, 10000),*/*/
                  
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      
                      categorieswidget("Room"),
                      categorieswidget("Apartment "),
                      categorieswidget("House"),
                      categorieswidget("2 Rooms"),
                      categorieswidget("3 Rooms"),
                      categorieswidget("Girls Hostel"),
                      categorieswidget("Boys Hostel"),
                      
                    ],),
                  ),
             
                  SizedBox(height: 20), 
                             Expanded(
                              // height: 500, 
                               child: Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 20),
                                 child: GridView.count(crossAxisCount: 2,
                                  childAspectRatio: 0.78,// to manage height of gridview
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20,
                                  physics: const BouncingScrollPhysics(),
                                  children: [
                                    gridWidget("Apartment", "Pokhara", 33587, 14000, "images/apartment1.jpg", (){}),
                                    gridWidget("House", "Nawalpur", 33588, 20000, "images/house4.jpg", (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(),));
                                    }),
                                    gridWidget("Room", "Chitwan", 33589, 5000, "images/room5.jpg", (){}),
                                    gridWidget("Apartment", "Banke", 33590, 9000, "images/apartment.jpg", (){}),
                                    gridWidget("House", "Illam", 33591, 16000, "images/house3.jpg", (){}),
                                    gridWidget("Apartment", "Kathmandu", 33592, 18000, "images/apartment3.jpg",(){}),
                                    
                            
                                  ],
                                  ),
                               ),
                             ),
                             SizedBox(height: 20,),
                    ])),
                  );
    }}



Widget customTextField(String title, IconData icon, bool isPasswordType) {
   return SizedBox(
      height: 20,
      child: TextFormField( //textformfield instead textfield as it provides validator to validate the value given by user
        cursorColor: Colors.black,
        obscureText: isPasswordType,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.black,),
          fillColor: Colors.white,
          filled: true,
          hintText: title,
          hintStyle: const TextStyle(
            fontFamily: 'Cinzel',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        
      )
      );
}
  Widget gridWidget( String title, String address, int listid, double price,String images,Function onTap) => GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(children: [
          Image.asset(images,
          fit:BoxFit.fill,
          ),
          SizedBox(height:20),
          Text('''
    $title available''',
                    style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
          ),
          Text('''
    $address     #$listid''',
                    style: TextStyle(fontSize: 14,
                    fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
          ),
          Text('Rs.$price/month',
                    style: TextStyle(fontSize: 14,
                    fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
          )
        ]),
      ),
    );


      
            
  Widget categorieswidget(String title) {
    return InkWell(
     onTap: () {
      print('pressed');
     },
     child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
       height: 35,
       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      alignment: Alignment.center,
       decoration: BoxDecoration(
     
         color: Colors.blueGrey,
         borderRadius: BorderRadius.circular(20),
       ),
        child: Text(title,
           style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Vollkorn'),
                 ),
     ),
              );
  }
Widget containerList(String imageUrl,Function onTap)
{
  return InkWell(
    child: Container(
            height: 140,
            width: 165,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 4),
            decoration: BoxDecoration(
              image:
               DecorationImage(image:
               AssetImage(imageUrl),
              ),
              color: Colors.white,),
            ),
  );


  
}
Widget details(String title, String address, int listid, double price)
{
  return Container(
    height: 140,
            width: 165,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 4),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.blueGrey.withOpacity(0.1)),
    child: Text(''' 
  $address       #$listid
  $listid     Rs.$price/month
  ''',
  
                    style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.w400
                    ),
                    textAlign: TextAlign.left,
    ),
  );
}