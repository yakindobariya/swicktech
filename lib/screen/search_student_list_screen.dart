import 'package:flutter/material.dart';
import 'package:swicktech/constant/export.dart';

class SearchStudentListScreen extends StatefulWidget {
  const SearchStudentListScreen({super.key});

  @override
  State<SearchStudentListScreen> createState() =>
      _SearchStudentListScreenState();
}

class _SearchStudentListScreenState extends State<SearchStudentListScreen> {
  String? selectedGrade;
  String? selectedSearchBy;
  String? selectedSortBy;
  String? selectedType;
  String? selectedStatus;
  final TextEditingController keywordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search Student List',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              _buildDropdown('Grade/Class', selectedGrade, (value) {
                setState(() {
                  selectedGrade = value;
                });
              }),
              _buildDropdown('Search By', selectedSearchBy, (value) {
                setState(() {
                  selectedSearchBy = value;
                });
              }),
              _buildKeywordField(),
              _buildDropdown('Sort By', selectedSortBy, (value) {
                setState(() {
                  selectedSortBy = value;
                });
              }),
              _buildDropdown('Type', selectedType, (value) {
                setState(() {
                  selectedType = value;
                });
              }),
              _buildDropdown('Status', selectedStatus, (value) {
                setState(() {
                  selectedStatus = value;
                });
              }),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1F4E5F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'GetAttendance',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown(
      String title, String? selectedValue, Function(String?) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            value: selectedValue,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
            hint: const Text('Select a option'),
            items: ['Option 1', 'Option 2', 'Option 3'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  Widget _buildKeywordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Keyword',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: keywordController,
            decoration: InputDecoration(
              hintText: 'Enter keyword',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ],
      ),
    );
  }
}
