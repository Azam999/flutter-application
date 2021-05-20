import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String text;
  final String text2;
  Item({this.text, this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.blue[600],
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(40),
                  child: Text('$text'),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Expanded(
          flex: 2,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.blue[600],
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(40),
                  child: Text('$text2'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
