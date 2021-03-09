import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmm/main.dart';

void main() => runApp(MaterialApp(
  home: login(),
  routes: {
    "HomePage": (context) => HomePage(),},
));

// ignore: camel_case_types
class login extends StatefulWidget {
  @override
  __login createState() => __login();
}

  // ignore: camel_case_types
  class __login extends State<login> {
    TextEditingController A = TextEditingController();
    String B = '';
    TextEditingController C = TextEditingController();
    String D = '';
    bool Q = true;
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    appBar: PreferredSize(
      preferredSize: Size.fromHeight(80.0),
    child:AppBar(
        title :Text('Login', style: TextStyle(color: Colors.black , fontSize: 30 , )),
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(100),
        ),
      ),

     leading:  IconButton(icon: Icon(Icons.arrow_back ), color :Colors.black , iconSize: 30,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute
              (builder: (BuildContext context) => HomePage(),));
          }

      ),
    ),
    ),
    body:SingleChildScrollView(
     
      child: Column(

         children :<Widget>[
           SizedBox(width : 1* MediaQuery.of(context).size.width,height: 60,),
           SizedBox(
             width: 350,
           child : TextFormField(
             controller : A,
               onChanged: (textValue) {
               setState(() {
              B = textValue ;
              });
               },
             style : TextStyle(color: Colors.deepPurple,fontSize: 20),
             keyboardType: TextInputType.phone,
             decoration:  InputDecoration(
               hintText: "Phone Number",
               border: OutlineInputBorder (
                borderSide :BorderSide(width: 50,color:Colors.deepPurple),
                 borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
           ),
           ),

           SizedBox(width : 1* MediaQuery.of(context).size.width,height: 20,),
           SizedBox(
             width: 350,
             child : TextFormField(
               controller : C,
               onChanged: (textValue) {
                 setState(() {
                   D = textValue ;
                 });
               },
               style : TextStyle(color: Colors.deepPurple,fontSize: 20),
               keyboardType: TextInputType.text,
               obscureText: true,
               decoration:  InputDecoration(
                 hintText: "Password",
                 border: OutlineInputBorder (
                   borderSide :BorderSide(width: 50,color:Colors.deepPurple),
                   borderRadius: BorderRadius.all(Radius.circular(8)),
                 ),
               ),
             ),
           ),
           SizedBox(width : 1* MediaQuery.of(context).size.width,height: 20,),
           FlatButton(onPressed: (){

           },
             shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(30.0)),
               child: Container (
                 decoration: new BoxDecoration(
                     color: Colors.deepPurple, //new Color.fromRGBO(255, 0, 0, 0.0),
                     borderRadius: new BorderRadius.circular(15.0)),
                 width: 0.5* MediaQuery.of(context).size.width,
                 height: 50,

                 child: Center(
                  child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                   textAlign: TextAlign.center,
               ),
                 ),
           ),
           ),
           SizedBox(width : 1* MediaQuery.of(context).size.width,height: 20,),
           FlatButton(onPressed: (){},
             shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(30.0)),
             child: Container (
               decoration: new BoxDecoration(
                   color: Colors.deepPurple, //new Color.fromRGBO(255, 0, 0, 0.0),
                   borderRadius: new BorderRadius.circular(15.0)),
               width: 0.5* MediaQuery.of(context).size.width,
               height: 50,

               child: Center(
                 child: Text('Sign up', style: TextStyle(fontWeight: FontWeight.bold,
                     fontSize: 20,
                     color: Colors.white),
                   textAlign: TextAlign.center,
                 ),
               ),

             ),
           ),
           SizedBox(width : 1* MediaQuery.of(context).size.width,height: 20,),
           Row(
             children: [           Switch(
             value: Q,
             onChanged: (value) {
               setState(() {
                 Q = value;
               });
             },
             activeTrackColor: Colors.grey,
             activeColor: Colors.deepPurple,
           ),

                Text('Remember Password ?', style: TextStyle(fontWeight: FontWeight.bold,
           fontSize: 15,
    )
    ),
              ],
            ),

    ],

    ),

    ),
  );
  }
  }

//keyboardType: TextInputType.phone,