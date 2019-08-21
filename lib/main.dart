import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:image_picker/image_picker.dart';

import 'image_upload.dart';

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
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Elections'),
      ),
      body: WebView(
        initialUrl: 'https://vibhu-lgmoxr.azurewebsites.net',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Vibhu'),
                currentAccountPicture: Image.network('https://firebasestorage.googleapis.com/v0/b/code-fun-do-26d59.appspot.com/o/IMG_20190621_090320_thumb.jpg?alt=media&token=0371505e-161c-4cfb-b959-5da2c888e58e'),
                otherAccountsPictures: <Widget>[
                  Image.network('https://firebasestorage.googleapis.com/v0/b/code-fun-do-26d59.appspot.com/o/aap_symbol.jpg?alt=media&token=9bdda29a-a789-46a5-b541-8ff963fbd551')
                ],
                accountEmail: Text('vibhuvardhansingh@gmail.com')),
//            DrawerHeader(
//              child: Column(
//                children: <Widget>[
//                  Text('Profile', style: TextStyle(color: Colors.white),),
//                ],
//              ),
//              decoration: BoxDecoration(
//                color: Colors.orange,
//              ),
//            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.orange,
              ),
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
              leading: Icon(
                Icons.phone,
                color: Colors.orange,
              ),
              title: Text(
                'Contact',
                style: TextStyle(color: Colors.grey),
              ),
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
              leading: Icon(
                Icons.input,
                color: Colors.orange,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Documents',
        onPressed: () {
          navigateToSubPage(context);
        },
        child: Icon(Icons.add),
        elevation: 8.0,
      ),
    );
  }

  Future navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ImageUpload()));
  }
}
