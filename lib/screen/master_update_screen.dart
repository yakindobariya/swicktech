import 'package:flutter/material.dart';

class MasterUpdateScreen extends StatefulWidget {
  const MasterUpdateScreen({super.key});

  @override
  State<MasterUpdateScreen> createState() => _MasterUpdateScreenState();
}

class _MasterUpdateScreenState extends State<MasterUpdateScreen> {
  final List<Map<String, dynamic>> updates = [
    {
      "title": "Student Roll Number Updation",
      "icon": Icons.person,
      "color": Colors.blue.shade100,
      "iconColor": Colors.blue
    },
    {
      "title": "Student Field Updation",
      "icon": Icons.edit,
      "color": Colors.green.shade100,
      "iconColor": Colors.green
    },
    {
      "title": "Student Document Updation",
      "icon": Icons.school,
      "color": Colors.pink.shade100,
      "iconColor": Colors.pink
    },
    {
      "title": "Employee Document Updation",
      "icon": Icons.badge,
      "color": Colors.purple.shade100,
      "iconColor": Colors.purple
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Master Update",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: updates.length,
        itemBuilder: (context, index) {
          final update = updates[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: CircleAvatar(
                backgroundColor: update["color"],
                child: Icon(update["icon"], color: update["iconColor"]),
              ),
              title: Text(
                update["title"],
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
              },
            ),
          );
        },
      ),
    );
  }
}
