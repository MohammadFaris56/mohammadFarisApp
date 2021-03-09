import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mmm/Settings.dart';
import 'package:mmm/login.dart';
import 'Donations.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        "Donations": (context) => Donations(),
        "Settings": (context) => Settings(),
        "login": (context) => login(),
      },
    );
  }
}
class HomePage extends StatefulWidget {
  static const String_title = 'Flutter Code Sample';
  @override
  ___HomePageState createState() => ___HomePageState();
}

class ___HomePageState extends State<HomePage> {
  String text = '0';
  String dropdownValue = 'Charity';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mohammad', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(100),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: Drawer (
        child : Column(
          children: [ Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[ SizedBox( height:20, ),
                    Image.asset("assets/photos/1.png",
                      width: 0.5 * MediaQuery.of(context).size.width,
                      height: 0.5 * MediaQuery.of(context).size.width,
                      fit: BoxFit.scaleDown
                  ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset("assets/photos/2.png", width: 35,),
                    ),
                  ],
                ),
              ]
          ),
            Padding(
              padding: EdgeInsets.all(0.90),
              child: Divider(thickness: 0,),
            ),
            Column(
                children: [

                  SizedBox(width: 0.6 * MediaQuery.of(context).size.width, height: 5 ),
                  Text('Mohammad Fairs', style: TextStyle(fontSize: 20)),
                  Text('(+964)7503321220',
                      style: TextStyle(fontSize: 12))
                ]
            ),
            Padding(
              padding: EdgeInsets.all(0.90),
              child: Divider(thickness: 0,),
            ),
               FlatButton(onPressed: () {
               Navigator.of(context).pushReplacementNamed("Settings");
               },
               child: Padding(
               padding: const EdgeInsets.all(0),
               child: Row(
               children: [
                 SizedBox(width: 10 , height:60 ,),
                 Image.asset('assets/photos/15.png', width: 30),
                 SizedBox(width: 4),
                 Text(' Settings '),
               ]
               ),
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
                    SizedBox(width: 24 , height:60 ,),
                    Image.asset('assets/photos/16.png', width: 30),
                    SizedBox(width: 4),
                    Text(' My Notes '),
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
                    SizedBox(width: 24 , height:60 ,),
                    Image.asset('assets/photos/17.png', width: 30),
                    SizedBox(width: 4),
                    Text(' Add contact '),
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
                    SizedBox(width: 24 , height:60 ,),
                    Image.asset('assets/photos/18.png', width: 30),
                    SizedBox(width: 4),
                    Text(' Invite friends '),
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
                    SizedBox(width: 24 , height:60 ,),
                    Image.asset('assets/photos/19.png', width: 30),
                    SizedBox(width: 4),
                    Text(' About and FAQ '),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0.90),
              child: Divider(thickness: 0,),
            ),
            FlatButton(onPressed: () {
              Navigator.of(context).pushReplacementNamed("login");
            },
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                    children: [
                      SizedBox(width: 10 , height:60 ,),
                      Image.asset('assets/photos/20.png', width: 30),
                      SizedBox(width: 4),
                      Text(' Login '),
                    ]
                ),
              ),
            ),
          ],
      ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,height: 700,
          child: Column(
             children: [ Row(
                  children: <Widget>[
                FlatButton(onPressed: () {
                  _awaitReturnValueFromSecondScreen(context);
                },
                  child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                      children: [
                        Image.asset('assets/photos/3.png', width: 30),
                        SizedBox(width: 4),
                        Text(' Donations '),
                        SizedBox(width: 220),
                        Text(text+'\$'),
                      ]
                  ),
                ),
                ),
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
                        SizedBox(width: 17),
                        Image.asset('assets/photos/4.png', width: 30),
                        SizedBox(width: 8),
                        Text(' To '),
                        SizedBox(width: 210),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.add_shopping_cart),
                      iconSize: 15,
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>['Charity', 'HomeLess']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
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
                        SizedBox(width: 16),
                        Image.asset('assets/photos/5.png', width: 40),
                        SizedBox(width: 1),
                        Text(' Date '),
                        SizedBox(width: 220),
                        Text('03/09/2017'),
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0.90),
                  child: Divider(thickness: 0,),
                ),
              ]
          ),
        ),
      ),
    );
  }

  void _awaitReturnValueFromSecondScreen(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Donations(),
        ));
    setState(() {
      text = result;
    });
  }
}
