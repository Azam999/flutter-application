import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Text("Message"),
      ),
      body: Column(
        children: [
          Spacer(),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  
                  color: Colors.white.withOpacity(0.05)
                )
              ]
            ),
            padding: EdgeInsets.all(20),
            child: SafeArea(
                child: Row(
              children: [
                Icon(
                  Icons.mic,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              onPressed: () {},
                              icon: Icon(Icons.emoji_emotions_outlined),
                              color: Colors.blue[800]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Message", border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.grey[400]),
                  onPressed: () {},
                  splashRadius: 20,
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
