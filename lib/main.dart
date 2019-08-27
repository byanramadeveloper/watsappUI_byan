import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),//ThereData
      home: SplashScreen.navigate(
          name: 'asset/mikro.flr',
          next: MyHomePage(),
          until: ()=> Future.delayed(Duration(seconds: 5)),
        startAnimation: "1",
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController tabcontroller;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
        bottom: new TabBar(
          tabs: <Widget>[Icon(Icons.camera), new Text("text"), new Text("text 2")],
          controller: tabcontroller,
        ),
      ),
      body: new TabBarView(children: <Widget>[
        new Text(
          " TabBarView placeholder 1",
          style: new TextStyle(
              fontSize: 12.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),
        new Text(
          " TabBarView placeholder 2",
          style: new TextStyle(
              fontSize: 12.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        )
      ], controller: tabcontroller,),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabcontroller = TabController(length: 4, vsync: this);
  }
}
