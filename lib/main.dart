import 'package:flutter/material.dart';

import 'constant/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: NoticeTypeSelector(),
//     );
//   }
// }
//
// class NoticeTypeSelector extends StatefulWidget {
//   @override
//   _NoticeTypeSelectorState createState() => _NoticeTypeSelectorState();
// }
//
// class _NoticeTypeSelectorState extends State<NoticeTypeSelector> {
//   String _selectedNoticeType = "Student";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Notice Type Selector"),centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Notice Type",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blue,
//               ),
//             ),
//             SizedBox(height: 8),
//             Column(
//               children: [
//                 RadioListTile<String>(
//                   title: Text("Student"),
//                   value: "Student",
//                   groupValue: _selectedNoticeType,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedNoticeType = value!;
//                     });
//                   },
//                 ),
//                 RadioListTile<String>(
//                   title: Text("Staff"),
//                   value: "Staff",
//                   groupValue: _selectedNoticeType,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedNoticeType = value!;
//                     });
//                   },
//                 ),
//                 RadioListTile<String>(
//                   title: Text("Public"),
//                   value: "Public",
//                   groupValue: _selectedNoticeType,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedNoticeType = value!;
//                     });
//                   },
//                 ),
//                 RadioListTile<String>(
//                   title: Text("Schedule"),
//                   value: "Schedule",
//                   groupValue: _selectedNoticeType,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedNoticeType = value!;
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
