import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/house4.jpg")))),
              SizedBox(height: 50,),
              Text('''
Location: Devchuli-15, Nawalparasi East



''')
          ],
        ),
      ),
    );
  }
}