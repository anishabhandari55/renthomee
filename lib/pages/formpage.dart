import 'package:cityrooms/main.dart';
import 'package:cityrooms/pages/exhomepage.dart';
import 'package:cityrooms/pages/policies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
              Align(
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.other_houses,
                  size: 70,
                  color: Colors.black,
                ),
              ),
              Text(
                "All informations are required",
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 30,
              ),
              customTextField("Owner's Name", false),
              SizedBox(
                height: 20,
              ),
              customTextField("Email address", false),
              SizedBox(
                height: 20,
              ),
              customTextField("Province", false),
              SizedBox(
                height: 20,
              ),
              customTextField("District", false),
              SizedBox(
                height: 20,
              ),
              customTextField("Municipality", false),
              SizedBox(
                height: 20,
              ),
              customTextField("Ward No.", false),
              SizedBox(
                height: 20,
              ),
              customTextField("Street Name", false),
              SizedBox(
                height: 20,
              ),
              customTextField("House Registration no.", false),
              SizedBox(
                height: 20,
              ),
              customTextField("Owner's idenity card no.", false),
              SizedBox(
                height: 20,
              ),
              customTextField("Contact No.", false),
              SizedBox(
                height: 20,
              ),
              Text("Are you giving out house or apartment or room for rent?",
              textAlign: TextAlign.left,
              ),
              SizedBox(height: 5,),
              customTextField("Category", false),
              SizedBox(
                height: 20,
              ),
              Text("Click icon and take picture of the mentioned category",
              textAlign: TextAlign.left,
              ),
              TextFormField(
                //textformfield instead textfield as it provides validator to validate the value given by user
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.camera_alt_sharp,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black26),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  """The work of rendering may take some time as it requires some legal verification.Once you have fulfilled the required details you can press below to continue"""),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  child: Text("Save"),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                title: Text(
                                    "Confirm Details"),
                                content: Text("Are you sure the details are correct?"),
                                actions: [
                                  TextButton(
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage())),
                                      child: Text("Confirm")),
                                ]));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customTextField(String title, bool isPasswordType) {
  return SizedBox(
      height: 30,
      child: TextFormField(
        //textformfield instead textfield as it provides validator to validate the value given by user
        cursorColor: Colors.black,
        obscureText: isPasswordType,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: title,
          hintStyle: const TextStyle(
            fontFamily: 'Cinzel',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.black26),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ));
}
