import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mmm/main.dart';

void main() => runApp(MaterialApp(
  home: Donations(),
  routes: {
    "HomePage": (context) => HomePage(),},
));

class Donations extends StatefulWidget {
  @override
  __Donations createState() => __Donations();
}

class __Donations extends State<Donations> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body:  Container(
        padding: const EdgeInsets.all(40.0),
         child:  Column(
                   mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(  controller: myController,
            decoration:  InputDecoration(labelText: "Price"),
             keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly ],
            ),
          FlatButton (onPressed: () { _Done(context); },
            child: Text('Done') ,),

         ]

         ),
         ),
    );
  }
  // ignore: non_constant_identifier_names
  void _Done(BuildContext context) {
    String textToSendBack = myController.text;
    Navigator.pop(context, textToSendBack);
  }
}
