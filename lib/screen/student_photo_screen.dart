import 'package:flutter/material.dart';
import 'package:swicktech/constant/export.dart';

class StudentPhotoScreen extends StatefulWidget {
  const StudentPhotoScreen({super.key});

  @override
  State<StudentPhotoScreen> createState() => _StudentPhotoScreenState();
}

class _StudentPhotoScreenState extends State<StudentPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Photo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              10.h,
              const CustomDropdownFormField(
                items: ["items"],
                labelText: "Grade/Class",
              ),
              10.h,
              const CustomDropdownFormField(items: ["items"]),
            ],
          ),
        ),
      ),
    );
  }
}
