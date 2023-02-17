import 'package:cityrooms/main.dart';
import 'package:cityrooms/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:cityrooms/pages/formpage.dart';


class RenderPage extends StatefulWidget {
  RenderPage({super.key});

  @override
  State<RenderPage> createState() => _RenderPageState();
}

class _RenderPageState extends State<RenderPage> {
  bool? checkboxvalue=false;
  @override
  Widget build(BuildContext context) {
  print("Build method called");
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
              SizedBox(height: 10,),
              Text("Policies for renting",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),),
              SizedBox(height:20),
               Text("""Since you are willing to give out your home for rent, you must read and agree to following terms and conditions

1. The home should be well built that can withstand natural calamities that might occur.

2. You must mention the category(apartment or rooms or house) that you are willing to give out for rent. 

3. If found any fraud, you will be taken under legal consideration and we might as well sue your property in against of violating our terms and conditions.

5. The owner must have house insurance and should have cleared all the taxes.

6. Any discrimination regarding caste, religion, neurodiversity, race, color, national origin, gender identity, gender expression, Sexual orientation, age, body size, disabilities, appearance, is clearly unacceptable.

7. There should be no criminal record of the owner and respective members.

8. In case of violation of public interest value against the risk of harm, we look to human rights standards to make these judgements. 
               """     
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50, 
                  child: Row(
                    children: [ Checkbox(value: checkboxvalue,
                     onChanged: ( value) {
                       print(value);
                       setState(() {
                        checkboxvalue= value;
                      });
                     }),
                     SizedBox(width: 5),
                     Expanded(child: Text("I have read and agree to all the conditions mentioned above and will not violate any policies in future")),
          ]),
                ),
          SizedBox(height: 30,),
          Text("Go Further and give us the respective details. ",
          style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (() => Navigator.push(context,MaterialPageRoute(builder: (context)=> FormPage()))),
          child: Text("Press ok to continue"))


                 

              
              
            
          ],
          
          ),
        ),
      ),
    );
  }
}
  Widget customTextField(String title) {
   return SizedBox(
      height: 20,
      child: TextFormField( //textformfield instead textfield as it provides validator to validate the value given by user
        cursorColor: Colors.black,
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
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        
      )
      );
}