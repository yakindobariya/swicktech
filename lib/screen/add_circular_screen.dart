import 'package:flutter/material.dart';
import 'package:swicktech/constant/export.dart';

class AddCircularScreen extends StatefulWidget {
  const AddCircularScreen({super.key});

  @override
  State<AddCircularScreen> createState() => _AddCircularScreenState();
}

TextEditingController _circularNoController = TextEditingController();

class _AddCircularScreenState extends State<AddCircularScreen> {
  int _selectedNoticeType = 1;

  final List<String> _noticeTypes = ["Student", "Staff", "Public", "Schedule"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Circular"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              // Notice no
              10.h,
              TextFormField(
                controller: _circularNoController,
                decoration: const InputDecoration(
                    labelText: "Circular No.", border: OutlineInputBorder()),
              ),
              // date
              10.h,
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Date", border: OutlineInputBorder()),
              ),
              // notice type
              10.h,
              Container(
                // height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Wrap(
                  spacing: 8, // Space between items horizontally
                  // runSpacing: 8, // Space between rows
                  children: List.generate(
                    _noticeTypes.length,
                        (index) => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio<int>(
                          value: index + 1,
                          groupValue: _selectedNoticeType,
                          onChanged: (value) {
                            setState(() {
                              _selectedNoticeType = value!;
                            });
                          },
                        ),
                        Text(_noticeTypes[index]),
                        const SizedBox(width: 8), // Add spacing between items
                      ],
                    ),
                  ),
                ),
              ),
              // class/grade
              10.h,
              const CustomDropdownFormField(
                items: ["class"],
                labelText: "Grade/Class",
              ),
              10.h,
              const CustomDropdownFormField(
                items: ["items"],
                labelText: "Student Type (optional)",
              ),
              // circular title
              10.h,
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Circular Title",
                ),
              ),
              // description
              10.h,
              TextFormField(maxLines: null,
                decoration:  const InputDecoration(
                    labelText: "Description", border: OutlineInputBorder()),
              ),
              // authorized by
              10.h,
              TextFormField(
                decoration: const InputDecoration(
                    labelText: " Authorize by (optional)",
                    border: OutlineInputBorder()
                ),
              ),
              // upload attachment
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
              //   url link
              10.h,
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
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
              //   add url link
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
                      const Icon(
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
              // notify

              10.h,
              const CustomSavebutton()
            ],
          ),
        ),
      ),
    );
  }
}
