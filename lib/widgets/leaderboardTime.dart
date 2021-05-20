import 'package:flutter/material.dart';

class LeaderboardItem extends StatelessWidget {
  final String text;
  LeaderboardItem({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.red,
      ),
      child: Center(
        child: TextButton(
          child: Text("$text", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          onPressed: () {},
        ),
      ),
    );
  }
}
