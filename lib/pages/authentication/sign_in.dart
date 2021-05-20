import 'package:application/pages/loading.dart';
import 'package:application/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  //text form field state
  String email = '';
  String password = '';
  String error = '';
  bool loading = false;

  //form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue[800],
                    Colors.blue[200],
                  ],
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            autocorrect: false,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16),
                              icon: Icon(Icons.email_outlined,
                                  color: Colors.white),
                              hintText: "Email",
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                gapPadding: 0,
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  style: BorderStyle.none,
                                  width: 0,
                                ),
                              ),
                            ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter an email' : null,
                            onChanged: (val) {
                              setState(() {
                                email = val;
                              });
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16),
                              icon: Icon(Icons.vpn_key_outlined,
                                  color: Colors.white),
                              hintText: "Password",
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                gapPadding: 0,
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  style: BorderStyle.none,
                                  width: 0,
                                ),
                              ),
                            ),
                            validator: (val) => val.length < 8
                                ? 'Enter a password 8+ characters long'
                                : null,
                            onChanged: (val) {
                              setState(() {
                                password = val;
                              });
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 16),
                            child: TextButton(
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  setState(() {
                                    loading = true;
                                  });
                                  dynamic result =
                                      await _auth.signInWithEmailAndPassword(
                                          email, password);
                                  if (result == null) {
                                    setState(() {
                                      error =
                                          'Error signing in\nPlease make sure the email is valid';
                                      loading = false;
                                    });
                                  }
                                }
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(horizontal: 30),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.blue[700],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            error,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 200,
                          ),
                          // Text(
                          //   "Swipe up to register",
                          //   style: TextStyle(fontWeight: FontWeight.bold),
                          // ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: "Swipe up to "),
                                TextSpan(
                                  text: "sign up",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[800],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
