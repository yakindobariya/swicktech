import 'package:flutter/material.dart';
import 'package:swicktech/constant/export.dart';

class RemarkEntryScreen extends StatefulWidget {
  const RemarkEntryScreen({super.key});

  @override
  State<RemarkEntryScreen> createState() => _RemarkEntryScreenState();
}

class _RemarkEntryScreenState extends State<RemarkEntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Remark Entry"), centerTitle: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                // grade/class
                10.h,
                const CustomDropdownFormField(
                  items: ["items"],
                  labelText: "Grade/Class",
                ),
                // exam term
                10.h,
                const CustomDropdownFormField(
                  items: ["items"],
                  labelText: "Exam Term",
                ),
                //  remark entry mode
                10.h,
                const CustomDropdownFormField(
                  items: ["Typing","Select"],
                  labelText: "Remark Entry Mode",
                ),
                // sort by
                10.h,
                const CustomDropdownFormField(
                  items: ["Roll No." , "Student Name" , "Admission No"],
                  labelText: "Sort by",
                ),
                // sort ny type
                10.h,
                const CustomDropdownFormField(
                  items: ["items"],
                  labelText: "Sort By Type",
                ),
                // continue button
                20.h,
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xff225663),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Continue",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        10.w,
                        Icon(Icons.arrow_forward,color: Colors.white,)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
