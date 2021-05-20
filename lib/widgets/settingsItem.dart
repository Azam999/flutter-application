import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  final dynamic routeName;
  final String setTitle;
  final String setSubtitle;
  final Icon icon;

  SettingsItem({this.setTitle, this.setSubtitle, this.icon, this.routeName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]),
        ),
      ),
      child: ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
            ],
          ),
          title: Text(
            "$setTitle",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("$setSubtitle"),
          trailing:
              Icon(Icons.arrow_forward_ios_rounded, color: Colors.teal[300]),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => routeName));
          }),
    );
  }
}
