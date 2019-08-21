import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart';

import 'main.dart';

class ImageUpload extends StatefulWidget {
  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  File _image;

  @override
  Widget build(BuildContext context) {
    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
        print('Image Path $_image');
      });
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Documents'),
      ),
      body: Builder(
        builder: (context) => Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                new SizedBox(
                    width: 400.0,
                    height: 450.0,
                    child: Center(
                      child: (_image != null)
                          ? Image.file(
                              _image,
                              fit: BoxFit.cover,
                            )
                          : Text('Upload Image'),
                    )
//                Image.network(
//                        "",
//                        fit: BoxFit.fill,
//                      ),
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.addressCard,
                        size: 30.0,
                      ),
                      onPressed: () {
                        getImage();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Add Document'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      color: Colors.orange,
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        uploadPic(context);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future uploadPic(BuildContext context) async {
    setState(() {
      print("Profile Picture uploaded");
      Scaffold.of(context)
          .showSnackBar(SnackBar(
        elevation: 8.0,
          backgroundColor: Colors.green,
          content: Text('Profile Picture Uploaded')));
    });
  }
}
