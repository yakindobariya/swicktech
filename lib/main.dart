import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:swicktech/screen/document_screen.dart';
import 'package:swicktech/screen/exam_remark_entry.dart';
import 'package:swicktech/screen/leave_approvel_screen.dart';
import 'package:swicktech/screen/remark_entry_screen.dart';
import 'package:swicktech/screen/rolll_number_updation_screen.dart';
import 'constant/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RollNumberUpdationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
