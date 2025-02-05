import 'package:flutter/material.dart';

import '../constant/export.dart';

class NewStudentScreen extends StatefulWidget {
  const NewStudentScreen({super.key});

  @override
  State<NewStudentScreen> createState() => _NewStudentScreenState();
}

TextEditingController studentAdmissionNumberController =
    TextEditingController();
TextEditingController studentFormNumberController = TextEditingController();
TextEditingController studentNameController = TextEditingController();
TextEditingController studentDateOfAdmissionController =
    TextEditingController();
TextEditingController studentDateOfBirthController = TextEditingController();
TextEditingController studentSmsContectNumberController =
    TextEditingController();
TextEditingController studentAadharNumberController = TextEditingController();
TextEditingController studentFatherNameController = TextEditingController();
TextEditingController studentFatherContectNumberController =
    TextEditingController();
TextEditingController studentMotherNameController = TextEditingController();
TextEditingController studentAddressController = TextEditingController();
TextEditingController studentStateController = TextEditingController();
TextEditingController studentCityController = TextEditingController();

class _NewStudentScreenState extends State<NewStudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Registration"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              // course
              const CustomDropdownFormField(
                items: ['android', 'flutter', 'web'],
                labelText: "Select Course",
              ),
              10.h,
              Row(
                children: [
                  // admission no.
                  Expanded(
                    child: TextFormField(
                      controller: studentAdmissionNumberController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Admission No.",
                        hintText: "Enter Admission No.",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  // form/sr no
                  5.w,
                  Expanded(
                    child: TextFormField(
                      controller: studentFormNumberController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Form/Sr No.",
                        hintText: "Enter Sr No.",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  )
                ],
              ),
              // select session
              10.h,
              const CustomDropdownFormField(
                items: ["Morning", "Afternoon"],
                labelText: "Select Session",
              ),
              // student name
              10.h,
              TextFormField(
                controller: studentNameController,
                decoration: const InputDecoration(
                  labelText: "Student Name",
                  hintText: "Enter Student Name",
                  border: OutlineInputBorder(),
                ),
              ),
              10.h,
              Row(
                children: [
                  // date of admission
                  Expanded(
                      child: TextFormField(
                    controller: studentDateOfAdmissionController,
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                        labelText: "Date Of Admission",
                        hintText: "Enter Admission Date",
                        border: OutlineInputBorder()),
                  )),
                  5.w,
                  Expanded(
                    child: TextFormField(
                      controller: studentDateOfBirthController,
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                          labelText: "Date Of Birth",
                          hintText: "Enter Birth Date",
                          border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              10.h,
              //Gender
              Row(
                children: [
                  const Expanded(
                    child: CustomDropdownFormField(
                      items: ["Male", "Female", "Other"],
                      labelText: "Gender",
                    ),
                  ),
                  // blood group
                  5.w,
                  const Expanded(
                    child: CustomDropdownFormField(
                      items: ['A+', 'A', 'B+', 'B', 'O+', 'O', 'AB+', 'AB'],
                      labelText: "Blood Group",
                    ),
                  ),
                ],
              ),
              // sms contect number
              10.h,
              TextFormField(
                controller: studentSmsContectNumberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    labelText: "SMS Contect No.",
                    hintText: "Enter SMS Contect No.",
                    border: OutlineInputBorder()),
              ),
              // aadhar no.
              10.h,
              TextFormField(
                controller: studentAadharNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Aadhar Number",
                    hintText: "Enter Aadhar Number.",
                    border: OutlineInputBorder()),
              ),
              // father number
              10.h,
              TextFormField(
                controller: studentFatherNameController,
                decoration: const InputDecoration(
                    labelText: "Father's Name",
                    hintText: "Enter Father Name",
                    border: OutlineInputBorder()),
              ),
              10.h,
              // father contect number
              TextFormField(
                controller: studentFatherContectNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Father's Contect Number",
                    hintText: "Enter Father's Contect Number.",
                    border: OutlineInputBorder()),
              ),
              10.h,
              // mother name
              TextFormField(
                controller: studentMotherNameController,
                decoration: const InputDecoration(
                    labelText: "Mother's Name",
                    hintText: "Enter Mother's Name",
                    border: OutlineInputBorder()),
              ),
              // address
              10.h,
              TextFormField(
                controller: studentAddressController,
                decoration: const InputDecoration(
                    labelText: "Address",
                    hintText: "Enter Address",
                    border: OutlineInputBorder()),
              ),
              10.h,
              Row(
                children: [
                  const Expanded(
                    child: CustomDropdownFormField(
                      items: [
                        'China',
                        'India',
                        'Indonesia',
                        'Pakistan',
                        'Bangladesh',
                        'Japan',
                        'Philippines',
                        'Vietnam',
                        'Iran',
                        'Turkey',
                      ],
                      labelText: "Country",
                    ),
                  ),
                  5.w,
                  Expanded(
                    child: TextFormField(
                      controller: studentStateController,
                      decoration: const InputDecoration(
                          labelText: 'State',
                          hintText: 'Enter State',
                          border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              10.h,
              TextFormField(
                controller: studentCityController,
                decoration: const InputDecoration(
                    labelText: 'City',
                    hintText: 'Enter Your City',
                    border: OutlineInputBorder()),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const Scaffold(
                          body: SingleChildScrollView(
                            child: Column(
                              children: [Text("")],
                            ),
                          ),
                        );
                      },
                    );
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xff225663),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.save_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text(
                          "Save",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
