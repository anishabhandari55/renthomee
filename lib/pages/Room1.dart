
import 'package:flutter/material.dart';
import 'package:cityrooms/pages/exhomepage.dart';


class Room1 extends StatelessWidget {
  const Room1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: 
      // for icon only we use size but for iconbutton we use transform scale and use scale property
         Transform.scale(
          scale: 0.8,
           child: IconButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: ((context) => const HomePage())));
            }, icon: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back_ios_new_outlined))),
         ),
      
         title: Text('Apartment',
         textAlign: TextAlign.left,
         style: TextStyle(
        fontFamily: 'CrimsonRegular',
        fontWeight: FontWeight.w600,
        fontSize: 19,
      ),
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
      actions: [Icon(Icons.category_rounded)],
      ),
      body: Column(children: [
        Row(
          children: [
            Container(),
          ],

        )
      ],)

      );
  }
}