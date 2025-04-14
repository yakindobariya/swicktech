import 'package:flutter/material.dart';

import '../constant/export.dart';

class MarkStudentAttendanceScreen extends StatefulWidget {
  const MarkStudentAttendanceScreen({super.key});

  @override
  State<MarkStudentAttendanceScreen> createState() =>
      _MarkStudentAttendanceScreenState();
}

class _MarkStudentAttendanceScreenState
    extends State<MarkStudentAttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mark Student Attendance"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CustomDropdownFormField(
              items: ["items"],
              labelText: "Select Class",
            ),
            10.h,
            const CustomDropdownFormField(
              items: [
                "Number",
                "Name",
              ],
              labelText: "Short By",
            ),
            10.h,
            const CustomDropdownFormField(
              items: ["Ascending", "descending"],
              labelText: "Type",
            ),
            10.h,
            const TextField(
              decoration: InputDecoration(

                  labelText: "Attendance Date", border: OutlineInputBorder()),
              keyboardType: TextInputType.datetime,
            ),
            20.h,
            InkWell(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const StudentAttendanceScreen(),));}, // set
              child: Container(
                height: 56,
                width: 343,
                decoration: BoxDecoration(
                  color: const Color(0xff225663),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Continue",style: GoogleFonts.inter(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),),
                    5.w,
                    const Icon(Icons.arrow_forward,color: Colors.white,)
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
