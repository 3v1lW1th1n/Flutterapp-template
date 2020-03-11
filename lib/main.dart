import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()=> runApp(new Codesolution());

class Codesolution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme:new ThemeData(
        primarySwatch:Colors.deepPurple,
        primaryColor: Colors.deepPurple
      ),
      home: new HomePage(),
    ); 
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text("Sudarshan Vishwakarma"), accountEmail: new Text("sudarshan.vis101@gmail.com"), currentAccountPicture: new CircleAvatar(
              backgroundColor:Colors.red,
            )),
            new ListTile(
              title:new Text('Page One'),
              trailing: new Icon(Icons.arrow_upward),
            ),
            new ListTile(
              title:new Text('Page two'),
              trailing: new Icon(Icons.arrow_downward),
            ),
            new ListTile(
              title:new Text('Page Close'),
              trailing: new Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body:new Center(
        child:new Text('Home Page')
      ),
    );
  }

}