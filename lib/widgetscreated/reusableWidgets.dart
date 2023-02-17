import 'package:cityrooms/pages/exhomepage.dart';
import 'package:flutter/material.dart';
import 'package:cityrooms/pages/loginpage.dart';




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
          Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomePage())));
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






