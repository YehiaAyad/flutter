

import 'package:flutter/material.dart';

void main() {
  runApp( new app());

}

class app extends StatefulWidget {
  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  List<int> items=new List();
  String k;
  @override
  void initState() {
     k='This is application for ur transactions';
    super.initState();

  }

  void method3()
  { setState(() {
    k='Why do u wanna exit??';
  });}
  void method2()
  { setState(() {
    k='You want to go home??';
  });}
  void method1()
  { setState(() {
    k='Do you want the side menu???';
  });

  }

  @override
  Widget build (BuildContext context) {
    return new MaterialApp(
      title: 'Mohamed',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Your Application'),
          backgroundColor: Colors.cyan,
          leading: new Icon(Icons.settings_power),
          bottomOpacity: 0.5,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.home), onPressed:(){method2();

            }
            )
            ,
            new IconButton(icon: new Icon(Icons.menu), onPressed:(){method1();

            })
          ],
        ),

        body: new Center(
          child: new Text(k),


        ),

      ),
    );
  }
}
