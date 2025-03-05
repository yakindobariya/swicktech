import 'package:flutter/material.dart';

class StudentRollNoUpdationScreen extends StatefulWidget {
  const StudentRollNoUpdationScreen({super.key});

  @override
  State<StudentRollNoUpdationScreen> createState() =>
      _StudentRollNoUpdationScreenState();
}

class _StudentRollNoUpdationScreenState
    extends State<StudentRollNoUpdationScreen> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Student Roll number Updation",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildDropdown(
                "Class/Course", "GetCourseBatchSectionForClassIncharge"),
            buildDropdown("Sort By", "Select an option"),
            buildDropdown("Sort By Type", "Select an option"),
            buildDropdown("Status", "Active"),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              label: const Text(
                "Continue",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget buildDropdown(String label, String hint) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: const TextStyle(
                  color: Colors.blue, fontWeight: FontWeight.bold)),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(border: OutlineInputBorder()),
            hint: Text(hint),
            items: [],
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
