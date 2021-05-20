import 'package:application/pages/settingsPages/aboutPage.dart';
import 'package:application/pages/settingsPages/accountPage.dart';
import 'package:application/pages/settingsPages/appearancePage.dart';
import 'package:application/pages/settingsPages/notificationsPage.dart';
import 'package:application/pages/settingsPages/privacyPage.dart';
import 'package:application/pages/settingsPages/supportPage.dart';
import 'package:application/services/auth.dart';
import 'package:application/widgets/settingsItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(
              color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  SettingsItem(
                    icon: Icon(Icons.person, color: Colors.teal[300]),
                    setTitle: "Account",
                    setSubtitle: "Change your details",
                    routeName: AccountPage(),
                  ),
                  SettingsItem(
                    icon: Icon(Icons.remove_red_eye, color: Colors.teal[300]),
                    setTitle: "Appearance",
                    setSubtitle: "Change how the app looks",
                    routeName: AppearancePage(),
                  ),
                  SettingsItem(
                    icon: Icon(Icons.notifications, color: Colors.teal[300]),
                    setTitle: "Notifications",
                    setSubtitle: "Change what you are notified about",
                    routeName: NotificationsPage(),
                  ),
                  SettingsItem(
                    icon: Icon(Icons.lock, color: Colors.teal[300]),
                    setTitle: "Privacy & Security",
                    setSubtitle: "Change how others view your profile",
                    routeName: PrivacyPage(),
                  ),
                  SettingsItem(
                    icon: Icon(Icons.headset_mic_rounded,
                        color: Colors.teal[300]),
                    setTitle: "Help & Support",
                    setSubtitle: "We are here for you",
                    routeName: SupportPage(),
                  ),
                  SettingsItem(
                    icon: Icon(
                      CupertinoIcons.question_circle_fill,
                      color: Colors.teal[300],
                    ),
                    setTitle: "About",
                    setSubtitle: "Read our policies",
                    routeName: AboutPage(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign out",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.logout,
                            color: Colors.red,
                          ),
                          onPressed: () async {
                            await _auth.signOut();
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Container(
          //   margin: EdgeInsets.all(40),
          //   child: Column(
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(
          //             "Public Profile",
          //             style:
          //                 TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          //           ),
          //           FlutterSwitch(
          //             value: status1,
          //             width: 50,
          //             height: 30,
          //             onToggle: (val) {
          //               setState(() {
          //                 status1 = val;
          //               });
          //             },
          //           ),
          //         ],
          //       ),
          //       SizedBox(
          //         height: 20,
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(
          //             "Dark Mode",
          //             style:
          //                 TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          //           ),
          //           FlutterSwitch(
          //             value: status2,
          //             width: 50,
          //             height: 30,
          //             onToggle: (val) {
          //               setState(() {
          //                 status2 = val;
          //               });
          //             },
          //           ),
          //         ],
          //       ),
          //       SizedBox(height: 20,),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(
          //             "Log out",
          //             style:
          //                 TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          //           ),
          //           IconButton(icon: Icon(Icons.logout, color: Colors.red,), onPressed: () {})
          //         ],
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
