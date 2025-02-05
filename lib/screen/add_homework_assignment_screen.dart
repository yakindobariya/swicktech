import 'package:flutter/material.dart';
import 'package:swicktech/constant/export.dart';

class AddHomeworkAssignmentScreen extends StatefulWidget {
  const AddHomeworkAssignmentScreen({super.key});

  @override
  State<AddHomeworkAssignmentScreen> createState() =>
      _AddHomeworkAssignmentScreenState();
}

TextEditingController _fromDate = TextEditingController();
TextEditingController _toDate = TextEditingController();
TextEditingController _homeworkAssignmentType = TextEditingController();
TextEditingController _description = TextEditingController();
TextEditingController _maxMarks = TextEditingController();

class _AddHomeworkAssignmentScreenState
    extends State<AddHomeworkAssignmentScreen> {
  List<Map<String, dynamic>> storeUrl = [];

  @override
  void _addUrl() {
    TextFormField(
      decoration: const InputDecoration(
          labelText: "URL Link (optional)", border: OutlineInputBorder()),
    );
  }

  void _deleteUrl(int index) {
    setState(() {
      storeUrl.removeAt(index);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Homework/Assignment"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
          child: Column(
            children: [
              const CustomDropdownFormField(
                items: ["Homework", "Assignment"],
                labelText: "Homework/Assignment Type",
              ),
              10.h,
              const CustomDropdownFormField(
                items: ["A+", "A", "B+", "B", "C"],
                labelText: "Grade/Class",
              ),
              10.h,
              const CustomDropdownFormField(
                items: ["Select a option"],
                labelText: "Subject",
              ),
              10.h,
              TextFormField(
                controller: _fromDate,
                decoration: const InputDecoration(
                    labelText: "From Date", border: OutlineInputBorder()),
                keyboardType: TextInputType.datetime,
              ),
              10.h,
              TextFormField(
                controller: _toDate,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "To Date"),
              ),
              10.h,
              TextFormField(
                controller: _homeworkAssignmentType,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Homework/Assignment Title"),
              ),
              10.h,
              TextFormField(
                controller: _description,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Description"),
              ),
              10.h,
              TextFormField(
                controller: _maxMarks,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Max Marks (optional)"),
              ),
              10.h,
              InkWell(
                onTap: () {},
                child: Container(
                  height: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: const Color(0xff00B628), width: 1),
                      color: const Color(0xffDFF9FF)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.h,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.cloud_upload_outlined,
                            size: 40,
                            color: Color(0xff00B628),
                          ),
                          10.w,
                          Text(
                            "Upload Attachment",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          )
                        ],
                      ),
                      const Center(
                          child: Text(
                              "1.File Support is jpg, jpeg, png,xls,ppt,xlsx,csv.\n2.Maximum size should be 5 MB")),
                    ],
                  ),
                ),
              ),
              10.h,
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "URL Link (optional)"),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete_forever,
                        size: 37,
                        color: Colors.red,
                      ))
                ],
              ),
              10.h,
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  width: 160,
                  height: 49,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 27,
                      ),
                      Text(
                        "Add URL Link",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),

              // save button
              10.h,
              InkWell(
                onTap: () {},
                child: Container(
                  width: 343,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xff225663)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.save_outlined,
                        color: Colors.white,
                        size: 44,
                      ),
                      5.w,
                      Text(
                        "Save",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600, fontSize: 18,color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              10.h,
            ],
          ),
        ),
      ),
    );
  }
}
