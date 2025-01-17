import 'package:flutter/material.dart';

import '../constant/export.dart';

class NewStudentScreen extends StatefulWidget {
  const NewStudentScreen({super.key});

  @override
  State<NewStudentScreen> createState() => _NewStudentScreenState();
}

TextEditingController studentAdmissionNumberController = TextEditingController();
TextEditingController studentFormNumberController = TextEditingController();
TextEditingController studentNameController = TextEditingController();
TextEditingController studentDateOfAdmissionController = TextEditingController();
TextEditingController studentDateOfBirthController = TextEditingController();
TextEditingController studentSmsContectNumberController = TextEditingController();
TextEditingController studentAadharNumberController = TextEditingController();
TextEditingController studentFatherNameController = TextEditingController();
TextEditingController studentFatherContectNumberController = TextEditingController();
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
        child: Column(
          children: [
            // course
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomDropdownFormField(
                items: ['android', 'flutter', 'web'],
                labelText: "Select Course",
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: studentAdmissionNumberController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Admission No.",
                        hintText: "Enter Admission No.",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter a mobile number.";
                        }
                        // Regular expression for validating a 10-digit mobile number
                        if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                          return "Please enter a valid 10-digit mobile number.";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: studentFormNumberController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Form/Sr No.",
                        hintText: "Enter Sr No.",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomDropdownFormField(
                  items: ["Morning", "Afternoon"],
                  labelText: "Select Session",
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: studentNameController,
                decoration: const InputDecoration(
                  labelText: "Student Name",
                  hintText: "Enter Student Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: studentDateOfAdmissionController,
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                        labelText: "Date Of Admission",
                        hintText: "Enter Admission Date",
                        border: OutlineInputBorder()),
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: studentDateOfBirthController,
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                          labelText: "Date Of Birth",
                          hintText: "Enter Birth Date",
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomDropdownFormField(
                        items: ["Male", "Female", "Other"],
                        labelText: "Gender",
                      )),
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomDropdownFormField(
                        items: ['A+', 'A', 'B+', 'B', 'O+', 'O', 'AB+', 'AB'],
                        labelText: "Blood Group",
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: studentSmsContectNumberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    labelText: "SMS Contect No.",
                    hintText: "Enter SMS Contect No.",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: studentAadharNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Aadhar Number",
                    hintText: "Enter Aadhar Number.",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: studentFatherNameController,
                decoration: const InputDecoration(
                    labelText: "Father's Name",
                    hintText: "Enter Father Name",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: studentFatherContectNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Father's Contect Number",
                    hintText: "Enter Father's Contect Number.",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: studentMotherNameController,
                decoration: const InputDecoration(
                    labelText: "Mother's Name",
                    hintText: "Enter Mother's Name",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: studentAddressController,
                decoration: const InputDecoration(
                    labelText: "Address",
                    hintText: "Enter Address",
                    border: OutlineInputBorder()),
              ),
            ),
            Row(
              children: [
                const Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
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
                      )),
                ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: studentCityController,
                decoration: const InputDecoration(
                    labelText: 'city',
                    hintText: 'Enter Your City',
                    border: OutlineInputBorder()),
              ),
            ),
            GestureDetector(
              onTap: () {},
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
    );
  }
}
