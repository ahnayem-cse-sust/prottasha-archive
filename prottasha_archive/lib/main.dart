import 'package:flutter/material.dart';

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
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.5, 110.0, 0.0, 0.0),
                  child: Container(
                    child: Text(
                      'Prottasha',
                      style: TextStyle(
                          fontSize: 70.0, fontWeight: FontWeight.bold, color: Colors.indigo
                      ),
                    ),
                  )
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.5, 175.0, 0.0, 0.0),
                  child: Text(
                    'Archive',
                    style: TextStyle(
                        fontSize: 25.0, color: Colors.brown
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
