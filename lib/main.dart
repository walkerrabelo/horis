import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horis - Teacher Hour Management',
      theme: ThemeData(
       primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Horis'),
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
      appBar: AppBar(
         title: Text(widget.title),
      ),
      body: PageView(
        
        children: <Widget>[
          Center(
         child: 
         Image.asset(
           "assets/images/timer.png",
           fit: BoxFit.fitWidth,
           height: 200.0,)
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.red,
        )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Registrar Aula',
        child: Icon(Icons.add),
      ),
      );
  }
}
