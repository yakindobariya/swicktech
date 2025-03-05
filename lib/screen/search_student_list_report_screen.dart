import 'package:flutter/material.dart';

class SearchStudentListReportScreen extends StatefulWidget {
  const SearchStudentListReportScreen({super.key});

  @override
  State<SearchStudentListReportScreen> createState() =>
      _SearchStudentListReportScreenState();
}

class _SearchStudentListReportScreenState
    extends State<SearchStudentListReportScreen> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> students = List.generate(
    10,
    (index) => {
      "name": "Yahvi Sarna (KG - Lotus)",
      "admNo": "9700",
      "rollNo": "9700",
      "parent": "S/O Mr. Gautam Sarna",
      "phone": "(958499494)"
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search Student List',
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        child: Column(
          children: [
            _buildSearchBar(),
            const SizedBox(height: 10),
            _buildStudentList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1F4E5F),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.refresh, color: Colors.white),
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                controller: searchController,
                decoration: const InputDecoration(
                  hintText: 'Search Keywords',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white70),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const Icon(Icons.search, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _buildStudentList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: students.length,
      itemBuilder: (context, index) {
        final student = students[index];
        return ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.shutterstock.com/image-photo/profile-photo-young-girl-wearing-260nw-2397752523.jpg'),
          ),
          title: Text(
            student["name"]!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Adm No. ${student["admNo"]} | Roll No. ${student["rollNo"]}\n"
            "${student["parent"]} - ${student["phone"]}",
          ),
          onTap: () {
            _showStudentActions(student["name"]!);
          },
        );
      },
    );
  }

  void _showStudentActions(String studentName) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                studentName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              _buildActionItem(Icons.call, "Voice Call"),
              _buildActionItem(Icons.person, "View Account"),
              _buildActionItem(Icons.edit, "Modify Detail"),
              _buildActionItem(Icons.delete, "Deactivate Account",
                  iconColor: Colors.red),
              _buildActionItem(Icons.add, "Add Complaint"),
            ],
          ),
        );
      },
    );
  }

  Widget _buildActionItem(IconData icon, String label, {Color? iconColor}) {
    return ListTile(
      leading: Icon(icon, color: iconColor ?? Colors.blue),
      title: Text(label),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
