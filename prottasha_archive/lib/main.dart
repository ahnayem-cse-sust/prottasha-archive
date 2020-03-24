import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Prottasha Archive'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
    resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(25.5, 120.0, 0.0, 0.0),
                        child: Text(
                          'P',
                          style: TextStyle(
                              fontSize: 90.0, fontWeight: FontWeight.bold, color: Colors.indigo,
                              fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(72, 158.0, 0.0, 0.0),
                        child: Text(
                          'rottasha',
                          style: TextStyle(
                              fontSize: 45.0, fontWeight: FontWeight.bold, color: Colors.indigo
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(72, 198.0, 0.0, 0.0),
                  child: Text(
                    'Archive',
                    style: TextStyle(
                        fontSize: 20.0, color: Colors.brown
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 95.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email/Username',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    )
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                      )
                  ),
                  obscureText: true,
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
