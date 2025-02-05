import 'package:flutter/material.dart';
import 'package:swicktech/constant/export.dart';

class AddNoticeScreen extends StatefulWidget {
  const AddNoticeScreen({super.key});

  @override
  State<AddNoticeScreen> createState() => _AddNoticeScreenState();
}

TextEditingController _noticeNo = TextEditingController();

class _AddNoticeScreenState extends State<AddNoticeScreen> {
  int _selectedNoticeType = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Notice"),
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
                controller: _noticeNo,
                decoration: const InputDecoration(
                    labelText: "Notice No.", border: OutlineInputBorder()),
              ),
              // date
              10.h,
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Date", border: OutlineInputBorder()),
              ),
              10.h,
              Container(
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Radio(value: 1, groupValue: _selectedNoticeType, onChanged: (value) {
                          setState(() {
                            _selectedNoticeType = value!;
                          });
                        },),
                    SizedBox(
                      width: 5,
                    ),
                    const Text("Student",),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: 2, groupValue: _selectedNoticeType, onChanged: (value) {
                          setState(() {
                            _selectedNoticeType = value!;
                          });
                        },),
                    const Text("Staff"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: 3, groupValue: _selectedNoticeType, onChanged: (value) {
                          setState(() {
                            _selectedNoticeType = value!;
                          });

                        },),
                    const Text("Public"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: 4, groupValue: _selectedNoticeType, onChanged: (value) {
                          setState(() {
                            _selectedNoticeType = value!;
                          });
                        },),
                    const Text("Schedule"),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
