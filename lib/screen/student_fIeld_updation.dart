import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentFieldUpdation extends StatefulWidget {
  const StudentFieldUpdation({super.key});

  @override
  State<StudentFieldUpdation> createState() => _StudentFieldUpdationState();
}

class _StudentFieldUpdationState extends State<StudentFieldUpdation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student Field Updation",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildDropdown(
              "Class/Course",
            ),
            buildDropdown("Sort By"),
            buildDropdown("Sort By Type"),
            buildDropdown("Status"),
            buildDropdown("Field Updation"),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1F4E5F),
                minimumSize: const Size(double.infinity, 45),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Continue",
                      style: TextStyle(color: Colors.white, fontSize: 16)),

                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "GetStudentListForBulkUpdates",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  Widget buildDropdown(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            items: const [
              DropdownMenuItem(
                  value: "option1", child: Text("Select a option")),
            ],
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
