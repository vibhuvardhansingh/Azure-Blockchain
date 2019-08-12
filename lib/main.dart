import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text('Elections'),
      ),
      body: WebView(
        initialUrl:
        'https://vibhuvs-fi65m2.azurewebsites.net',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Profile', style: TextStyle(color: Colors.white),),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.orange,),
              title: Text('Mail', style: TextStyle(color: Colors.grey)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              color: Colors.grey,
              height: .5,
              width: double.infinity,
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.orange,),
              title: Text('Contact', style: TextStyle(color: Colors.grey),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              color: Colors.grey,
              height: .5,
              width: double.infinity,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,
      child: Icon(Icons.add),
      elevation: 8.0,),
    );
  }
}
