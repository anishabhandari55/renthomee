import 'package:cityrooms/pages/exhomepage.dart';
import 'package:cityrooms/pages/loginpage.dart';
import 'package:cityrooms/pages/policies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatefulWidget { //drawer class changed to mydrawer because of overwriting issue
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Container(
        color: Colors.black.withOpacity(0.4),
        child: ListView(children: [
               DrawerHeader(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("""
                                HERE'S TO A NEW 
                                HOME, NEW ADVENTURE
                                AND NEW BEGINNING!!""",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Orbitron',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    
                  ),
                  
                  ),
                ),
                decoration: BoxDecoration(color: Colors.lightBlue,
                image: DecorationImage(image: AssetImage('images/room.jpg'),
                fit: BoxFit.cover
                )),
                padding: EdgeInsets.zero,
               ),
               ListTile(
                onTap: () {
                  showDialog(context: context, builder: (context)=> AlertDialog(
                    title: Text("You must follow and agree to certain policies before you start"),
                    content: Text("Click yes to read and agree to our policies"),
                    actions: [
                       TextButton(onPressed: () =>  Navigator.push(context, MaterialPageRoute(builder: (context)=> RenderPage())), 
                       child: Text("Yes")),
                       TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage())), 
                       child: Text("Maybe later")),
                    ],
                  ));


                },
                leading: Icon(CupertinoIcons.home, color: Colors.white,),
                title: Text('Render your home',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                ),
               ),
               ListTile(
                onTap: () {print('pressed');},
                leading: Icon(Icons.navigation, color: Colors.white,),
                title: Text('Socials',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                ),
               ),
               ListTile(
                leading: Icon(Icons.terminal_outlined, color: Colors.white,),
                title: Text('Terms & Condition',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                ),
               ),
               ListTile(
                onTap: () {
                  print('pressed');
                },
                leading: Icon(CupertinoIcons.share_up, color: Colors.white,),
                title: Text('Share App',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                ),
               ),
               ListTile(
                onTap: () {
                  print('pressed');
                },
                leading: Icon(Icons.privacy_tip, color: Colors.white,),
                title: Text('Privacy Policy',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                ),
               ),
               ListTile(
                onTap: () {
                  print('pressed');
                },
                leading: Icon(Icons.contact_mail, color: Colors.white,),
                title: Text('Contact us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                ),
               ),
               ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginPage())));
                },
                leading: Icon(Icons.logout,color: Colors.white,),
                title: Text('Log Out',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                ),
               ),
        ]
      ),
      )
    );
    
  }
}
/*child: Container(
        child: ListView(children: [
               DrawerHeader(
                decoration: BoxDecoration(color: Colors.lightBlue),
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text('Hello! Good to see you here'),
                  accountEmail: Text('Are You looking for or lending a home?'),
                ),
              )
            ],),
      )*/