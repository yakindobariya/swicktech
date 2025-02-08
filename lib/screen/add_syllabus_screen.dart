import 'package:flutter/material.dart';
import 'package:swicktech/constant/export.dart';

class AddSyllabusScreen extends StatefulWidget {
  const AddSyllabusScreen({super.key});

  @override
  State<AddSyllabusScreen> createState() => _AddSyllabusScreenState();
}

TextEditingController _addSyllabusDate = TextEditingController();
TextEditingController _addSyllabusReferenceby = TextEditingController();

class _AddSyllabusScreenState extends State<AddSyllabusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Syllabus"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              // Grade/class
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: const CustomDropdownFormField(
                  items: ["a", "b", "C"],
                  labelText: "Grade/Class",
                ),
              ),
              // subject
              10.h,
              const CustomDropdownFormField(
                items: ["Subject"],
                labelText: "Subject",
              ),
              // date
              10.h,
              TextFormField(
                controller: _addSyllabusDate,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Date",
                ),
                keyboardType: TextInputType.datetime,
              ),
              // reference by
              10.h,
              TextFormField(
                controller: _addSyllabusReferenceby,
                decoration: const InputDecoration(
                    labelText: " Reference by (optional)",
                    border: OutlineInputBorder()),
              ),
              //    Syllabus Title
              10.h,
        TextFormField(
          controller: _addSyllabusReferenceby,
          decoration: const InputDecoration(
              labelText: "  Syllabus Title",
              border: OutlineInputBorder()
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
              const CustomSavebutton(

              )
            ],
          ),
        ),
      ),
    );
  }
}
