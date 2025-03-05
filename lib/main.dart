import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:swicktech/screen/add_syllabus_screen.dart';
import 'package:swicktech/screen/document_screen.dart';
import 'package:swicktech/screen/exam_remark_entry.dart';
import 'package:swicktech/screen/rolll_number_updation_screen.dart';
import 'package:swicktech/screen/search_student_list_screen.dart';
import 'package:swicktech/screen/splash_screen.dart';
import 'package:swicktech/screen/student_fIeld_updation.dart';
import 'package:swicktech/screen/student_photo_screen.dart';
import 'package:swicktech/screen/switchuser_screen.dart';
import 'package:swicktech/screen/visitor_management_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SwitchUserScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
