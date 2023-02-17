import 'package:cityrooms/pages/loginpage.dart';
import 'package:cityrooms/widgetscreated/reusableWidgets.dart';
import 'package:flutter/material.dart';
import 'package:cityrooms/pages/homepage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
             children: [
             Image.asset(
             'images/circlehome1.jpg',
             height: size.height,
             width: size.width,
             fit: BoxFit.cover,
             
             ),
              /*Positioned(
                  child: Container(
                                         height: size.height,//only 20% of total height
                                         width: size.width,
                                         
                                        padding: const EdgeInsets.symmetric(horizontal: 30),
                                         decoration:
                       BoxDecoration(
                        /*image:
                                   DecorationImage(image:
                                   AssetImage("images/circlehome1.jpg", 
                                   ),
                                   alignment: Alignment.topLeft,
                                  ),*/
                          color: Colors.brown.withOpacity(0.6),
                          borderRadius: const BorderRadius.only(
                          )
                          )),
                     ),*/
                  
              Positioned(
                top:25, bottom:20,left: 20, right: 20,
                  child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.38),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(34),
                        topRight: Radius.circular(34),
                        bottomLeft: Radius.circular(34),
                        bottomRight: Radius.circular(34),
                      )
                      )),
                ),
              
                IconButton(
                onPressed: ((
                ) {
                  // event triggered by icon button and not by icon widget
                }),
                icon:  GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                    child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size:13,
                      ),
                  ),
                ),
                
              ),
          
              
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                   child: Column(children: [
                        SizedBox(
                          height: 200,
                        ),
                        SizedBox(
                          height: 40,
                          child:Container(
                          child: customTextField('Full Name',Icons.account_circle,false),),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          height: 40,
                          child:Container(
                          child: customTextField('Email',Icons.email,false),),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          height: 40,
                          child:Container(
                          child: customTextField('Username',Icons.assignment_ind,false),),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          height: 40,
                          child: customTextField('Password',Icons.lock,true),
                        ),
                        SizedBox(
                          height:25,
                        ),
                        SizedBox(
                          height: 40,
                          child: customTextField('Confirm Password',Icons.lock,true),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          height: 40,
                          child: loginbutton('Sign up', context)),
                          SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          TextButton(onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
                          }, child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => RegisterPage())));
                            },
                            child: Text('Sign in',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                            ),)),
                          ]),
                                 ]),
                 ),
             ]),
    ));
                   
  }
}
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

//Login/Signup button
Widget loginbutton(String title, BuildContext context) {
    return Material(
      color: Colors.black12.withOpacity(0.3),
      borderRadius: BorderRadius.circular(20),
      child: InkWell( //works on behalf of elevated button
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginPage())));
        },
        child: Container(
                height: 40,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 70),
               child: Align(
                alignment: Alignment.center,
                 child: Text(title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white),
                          ),
               ),
        ),
      ),
    );  
  } 






