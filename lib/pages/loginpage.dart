
import 'package:cityrooms/pages/registerpage.dart';
import 'package:cityrooms/pages/exhomepage.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          //image at first layer
          Image.asset('images/home.jpg',
          height: size.height,
          width: size.width,
          fit: BoxFit.cover,
          ),
          
          //center image
          const Positioned(
            top: 70,
            left: 0, // giving 0 to both left and right alligns the pic to centre
            right: 0,
            child: CircleAvatar(
              radius: 43,
              backgroundImage: AssetImage(
                'images/logo.jpg',
              ),
            ),
          ),
          const Positioned(
            top: 165,
            left: 140,
            right: 135,
            child: Text(
              'RentHome',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w200,
                fontFamily: 'Aboreto',
                letterSpacing: 2.0,
              ),
            ),
          ),
          
          Positioned(
            top:
                190, //container wrapped inside a widget positioned whcih helps in positioning  the elements of stack
            child: Container(
              height: size.height,
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.35),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontFamily: 'Vollkorn',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Designed to help you find a home',
                    style: TextStyle(
                      fontFamily: 'Vollkorn',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  SizedBox(
                    height: 40,
                    child: customTextField('Username/Email', Icons.email_sharp, false),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 40,
                    child: customTextField('Password', Icons.lock, false),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            print('Pressed');
                          },
                          child: const Text(
                            'Forgot your Password?',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: 90,),
                  loginbutton('Login ', context),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Do not have an account?'),
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
                        ),
                      ))
                    ],
                  )
                ]
              ),
            ),
          ),
        ],
          ),
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


  