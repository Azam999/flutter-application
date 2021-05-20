import 'package:application/pages/authentication/register.dart';
import 'package:application/pages/authentication/sign_in.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {

  final controller = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: [
        SignIn(),
        Register()
      ],
    );
  }
}
