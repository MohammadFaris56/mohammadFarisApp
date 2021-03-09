import 'package:flutter/material.dart';
import 'package:mmm/main.dart';

void main() => runApp(MaterialApp(
  home: Settings(),
  routes: {
    "HomePage": (context) => HomePage(),},
));

class Settings extends StatefulWidget {
  @override
  __Settings createState() => __Settings();
}

 class __Settings extends State<Settings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Settings', style: TextStyle(color: Colors.black)),
          centerTitle: true,
        leading :
          IconButton(icon: Icon(Icons.arrow_back), color :Colors.black , iconSize: 30,
              onPressed: () {Navigator.push(context, MaterialPageRoute
                (builder: (BuildContext context) => HomePage(),));
              } ,
              ),
            shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(100),
    ),
    ),
    ),
    body:Container(
      width: MediaQuery.of(context).size.width,height: 700,
      child: Column(
          children: [ Row(
              children: <Widget>[
           SizedBox(width: 10 , height:60 ,),
            Image.asset('assets/photos/6.png', width: 30),
            SizedBox(width: 4),
            Text(' Account '),
         ]
        ),
            Padding(
              padding: EdgeInsets.all(0.90),
              child: Divider(thickness: 0,),
            ),
         Padding(
          padding: const EdgeInsets.all(0),
          child: Row(
              children: [
                SizedBox(width: 10 , height:60 ,),
                Image.asset('assets/photos/7.png', width: 30),
                SizedBox(width: 4),
                Text(' Privacy '),
          ]
        ),
    ),
            Padding(
              padding: EdgeInsets.all(0.90),
              child: Divider(thickness: 0,),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                  children: [
                    SizedBox(width: 10 , height:60 ,),
                    Image.asset('assets/photos/8.png', width: 30),
                    SizedBox(width: 4),
                    Text(' Notification '),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0.90),
              child: Divider(thickness: 0,),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                  children: [
                    SizedBox(width: 10 , height:60 ,),
                    Image.asset('assets/photos/9.png', width: 30),
                    SizedBox(width: 4),
                    Text(' Calls and messages '),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0.90),
              child: Divider(thickness: 0,),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                  children: [
                    SizedBox(width: 10 , height:60 ,),
                    Image.asset('assets/photos/10.png', width: 30),
                    SizedBox(width: 4),
                    Text(' Media and storage '),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0.90),
              child: Divider(thickness: 0,),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                  children: [
                    SizedBox(width: 10 , height:60 ,),
                    Image.asset('assets/photos/11.png', width: 30),
                    SizedBox(width: 4),
                    Text(' Appearance '),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0.90),
              child: Divider(thickness: 0,),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                  children: [
                    SizedBox(width: 10 , height:60 ,),
                    Image.asset('assets/photos/12.png', width: 30),
                    SizedBox(width: 4),
                    Text(' General '),
                  ]
              ),
            ),
    ]
      ),
    ),
    );
  }
}