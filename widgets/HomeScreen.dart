import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'RENT HOME',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
          Spacer(),
          Badge(
            child: InkWell(
              onTap: () {},
              child: Icon(Icons.person),
            ),

          ),
          Icon(
            Icons.sort,
            size: 30,
            color: Colors.black12,
          )
        ],
      ),
    );
  }
}
