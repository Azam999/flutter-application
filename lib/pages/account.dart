import 'dart:io';
import 'package:flutter/material.dart';
import 'package:application/widgets/item.dart';
import 'package:image_picker/image_picker.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with TickerProviderStateMixin {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Account",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: _image == null
                      ? NetworkImage(
                          "https://images.unsplash.com/photo-1619186633721-1defa128860a?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60")
                      : FileImage(_image),
                  radius: 70,
                ),
              ),
            ),
            Container(
              child: TextButton(
                child: Text("Change Profile Picture"),
                onPressed: getImage,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                "Azam Ahmed",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("5K Posts"),
                  Container(
                    width: 1,
                    height: 20,
                    color: Colors.grey,
                  ),
                  Text("401K Followers"),
                  Container(
                    width: 1,
                    height: 20,
                    color: Colors.grey,
                  ),
                  Text("40 Following"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 4, 0, 10),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Level ",
                    ),
                    TextSpan(
                        text: '27',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                  style: TextStyle(color: Colors.blue[900], fontSize: 20),
                ),
              ),
            ),
            Container(
              child: Text("500/5000 XP"),
              margin: EdgeInsets.symmetric(vertical: 8),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.only(
                  left: ((MediaQuery.of(context).size.width * 1) / 10) - 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.purple, Colors.blue],
                ),
              ),
              height: 44,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.grey[700], Colors.grey[900]])),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[700],
              indent: 20,
              endIndent: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Item(
                      text: "Hello",
                      text2: "Hello 2",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Item(
                      text: "Hello",
                      text2: "Hello 2",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Item(
                      text: "Hello",
                      text2: "Hello 2",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Item(
                      text: "Hello",
                      text2: "Hello 2",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Item(
                      text: "Hello",
                      text2: "Hello 2",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Item(
                      text: "Hello",
                      text2: "Hello 2",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Item(
                      text: "Hello",
                      text2: "Hello 2",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
