// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

// class UserSlideable extends StatefulWidget {
//   @override
//   _UserSlideableState createState() => _UserSlideableState();
// }

// class _UserSlideableState extends State<UserSlideable> {
//   @override
//   Widget build(BuildContext context) {
//     return Slidable(
//       actionPane: SlidableDrawerActionPane(),
//       actionExtentRatio: 0.25,
//       child: Container(
//         color: Colors.white,
//         child: ListTile(
//           leading: CircleAvatar(
//             backgroundColor: Colors.indigoAccent,
//             foregroundColor: Colors.white,
//             radius: 28,
//           ),
//           subtitle: Text('521 Followers'),
//           title: Text(
//             "<First Last>",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//       actions: <Widget>[
//         IconSlideAction(
//           caption: 'Archive',
//           color: Colors.blue,
//           icon: Icons.archive,
//         ),
//         IconSlideAction(
//           caption: 'Share',
//           color: Colors.indigo,
//           icon: Icons.share,
//         ),
//       ],
//       secondaryActions: <Widget>[
//         IconSlideAction(
//           caption: 'More',
//           color: Colors.black45,
//           icon: Icons.more_horiz,
//         ),
//         IconSlideAction(
//           caption: 'Delete',
//           color: Colors.red,
//           icon: Icons.delete,
//         ),
//       ],
//     );
//   }
// }
