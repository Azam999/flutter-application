import 'package:application/pages/nextPage/nextPage.dart';
import 'package:flutter/material.dart';
import 'package:application/widgets/item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Discovery",
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: TextField(
                            decoration: InputDecoration(hintText: 'Search'),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red,
                              ),
                              child: IconButton(
                                icon: Icon(Icons.search),
                                onPressed: () {},
                                splashRadius: 28,
                                splashColor: Colors.amber[600],
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownButton<String>(
                          items: <String>[
                            'Popularity',
                            'New',
                            'A-Z',
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                          hint: Text("Popularity"),
                          dropdownColor: Colors.blue,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Advanced",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.teal[200])),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NextPage(),
                        ),
                      );
                    },
                    child: Text("Message Page"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
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
    );
  }
}
