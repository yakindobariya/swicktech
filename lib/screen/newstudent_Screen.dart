import 'package:flutter/material.dart';

import '../constant/export.dart';

class NewStudentScreen extends StatefulWidget {
  const NewStudentScreen({super.key});

  @override
  State<NewStudentScreen> createState() => _NewStudentScreenState();
}

String? selectedCourse; // Stores the selected value
final List<String> course = ['android', 'flutter', 'web'];

String? selectedSession;
final List<String> session = ['morning', 'afternoon'];

String? selectedGender;
final List<String> gender = ['Male', 'Female'];

String? selectedBloodGroup;
final List<String> bloodGroup = ['A+', 'A', 'B+', 'B', 'O+', 'O', 'AB+', 'AB'];

String? selectedCountry;
final List<String> country = [
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
];

TextEditingController admissionNumberController = TextEditingController();
TextEditingController formNumberController = TextEditingController();
TextEditingController studentNameController = TextEditingController();
TextEditingController dateOfAdmissionController = TextEditingController();
TextEditingController dateOfBirthController = TextEditingController();
TextEditingController smsContectNumberController = TextEditingController();
TextEditingController aadharNumberController = TextEditingController();
TextEditingController fatherNameController = TextEditingController();
TextEditingController fatherContectNumberController = TextEditingController();
TextEditingController motherNameController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController stateController = TextEditingController();
TextEditingController cityController = TextEditingController();

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: const InputDecoration(
                    labelText: "Course",
                    hintText: "Select Course",
                    border: OutlineInputBorder()),
                value: selectedCourse,
                items: course.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCourse = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please Select Course";
                  }
                  return null;
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: admissionNumberController,
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
                      controller: formNumberController,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: const InputDecoration(
                    labelText: "Session",
                    hintText: "Select a option",
                    border: OutlineInputBorder()),
                value: selectedSession,
                items: session.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedSession = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please Select Course";
                  }
                  return null;
                },
              ),
            ),
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
                    controller: dateOfAdmissionController,
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
                      controller: dateOfBirthController,
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
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Gender",
                          hintText: "Select Option"),
                      value: selectedGender,
                      items: gender.map((item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please Select Gender";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Blood Group",
                          hintText: "Select Option"),
                      value: selectedBloodGroup,
                      items: bloodGroup.map((item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedBloodGroup = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please Select Blood Group";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: smsContectNumberController,
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
                controller: aadharNumberController,
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
                controller: fatherNameController,
                decoration: const InputDecoration(
                    labelText: "Father's Name",
                    hintText: "Enter Father Name",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: fatherContectNumberController,
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
                controller: motherNameController,
                decoration: const InputDecoration(
                    labelText: "Mother's Name",
                    hintText: "Enter Mother's Name",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: addressController,
                decoration: const InputDecoration(
                    labelText: "Address",
                    hintText: "Enter Address",
                    border: OutlineInputBorder()),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Country",
                          hintText: "Select Option"),
                      value: selectedCountry,
                      items: country.map((item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedCountry = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please Select Gender";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    controller: stateController,
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
                controller: cityController,
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
                    color: Color(0xff225663),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.save_outlined,size: 40,color: Colors.white,),
                      Text("Save",style: GoogleFonts.inter(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),)
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
