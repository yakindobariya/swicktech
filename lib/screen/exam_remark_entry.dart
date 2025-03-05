import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamRemarkEntry extends StatefulWidget {
  const ExamRemarkEntry({super.key});

  @override
  State<ExamRemarkEntry> createState() => _ExamRemarkEntryState();
}

class _ExamRemarkEntryState extends State<ExamRemarkEntry> {
  String? selectedGrade;
  String? selectedTerm;
  String? selectedMode;
  String? selectedSortBy;
  String? selectedSortByType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Remark Entry',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildDropdown('Grade/Class', selectedGrade,
                (value) => setState(() => selectedGrade = value)),
            buildDropdown('Exam Term', selectedTerm,
                (value) => setState(() => selectedTerm = value)),
            buildDropdown('Remark Entry Mode', selectedMode,
                (value) => setState(() => selectedMode = value)),
            buildDropdown('Sort By', selectedSortBy,
                (value) => setState(() => selectedSortBy = value)),
            buildDropdown('Sort By Type', selectedSortByType,
                (value) => setState(() => selectedSortByType = value)),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1F4E5F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDropdown(
      String label, String? selectedValue, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade700),
          ),
          const SizedBox(height: 4),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
            ),
            value: selectedValue,
            items: ['Option 1', 'Option 2', 'Option 3']
                .map((value) =>
                    DropdownMenuItem(value: value, child: Text(value)))
                .toList(),
            onChanged: onChanged,
            hint: const Text('Select a option'),
            isExpanded: true,
          ),
        ],
      ),
    );
  }
}
