import 'package:flutter/material.dart';

import '../constant/export.dart';

class StaffRegistrationScreen extends StatefulWidget {
  const StaffRegistrationScreen({super.key});

  @override
  State<StaffRegistrationScreen> createState() =>
      _StaffRegistrationScreenState();
}

final _formKey = GlobalKey<FormState>();

TextEditingController _staffEmpNoController = TextEditingController();
TextEditingController _staffJoiningDateController = TextEditingController();
TextEditingController _staffRetireDateController = TextEditingController();
TextEditingController _staffNationalityController = TextEditingController();
TextEditingController _staffNameController = TextEditingController();
TextEditingController _staffFathersNoController = TextEditingController();
TextEditingController _staffMaritalStatusNoController = TextEditingController();
TextEditingController _staffContectNoController = TextEditingController();
TextEditingController _staffAadharNoController = TextEditingController();
TextEditingController _staffPanNoController = TextEditingController();
TextEditingController _staffAddressController = TextEditingController();
TextEditingController _staffAccountNoController = TextEditingController();
TextEditingController _staffIfscCodeController = TextEditingController();
TextEditingController _staffBankNameController = TextEditingController();

class _StaffRegistrationScreenState extends State<StaffRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staff Registration"),
        centerTitle: true,
        bottomOpacity: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    //  emp no
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _staffEmpNoController,
                        decoration: const InputDecoration(
                            labelText: "Emp no",
                            hintText: "Emp",
                            border: OutlineInputBorder()),
                      ),
                    ),
                    // shift
                    10.w,
                    const Expanded(
                        child: CustomDropdownFormField(
                      items: ["morning", "Afternoon"],
                      labelText: "Shift",
                    ))
                  ],
                ),
              ),
              20.h,
              Row(
                children: [
                  //  joining date
                  Expanded(
                    child: TextField(
                      controller: _staffJoiningDateController,
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                          labelText: "Joining Date",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  // retire date
                  10.w,
                  Expanded(
                    child: TextField(
                      onTap: () {},
                      controller: _staffRetireDateController,
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                          labelText: "Retire Date",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)))),
                    ),
                  ),
                ],
              ),
              20.h,
              Row(
                children: [
                  //  user type
                  const Expanded(
                      child: CustomDropdownFormField(
                    items: ["Teacher", "Developer", "HR"],
                    labelText: "User Type",
                  )),
                  // Nationality
                  10.w,
                  Expanded(
                      child: TextField(
                    controller: _staffNationalityController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Nationality"),
                  ))
                ],
              ),
              20.h,
              Row(
                children: [
                  // department
                  const Expanded(
                      child: CustomDropdownFormField(
                    items: ["items"],
                    labelText: "Department",
                  )),
                  10.w,
                  // designation
                  const Expanded(
                      child: CustomDropdownFormField(
                    items: ["Manager", "HR", "Sr. Developer", "Developer"],
                    labelText: "Designation",
                  )),
                ],
              ),
              // title
              20.h,
              Row(
                children: [
                  // title
                  const Expanded(
                    child: CustomDropdownFormField(
                      items: ["MR", "MRS"],
                      labelText: "Title",
                    ),
                  ),
                  10.w,
                  //  staff name
                  Expanded(
                      child: TextField(
                    controller: _staffNameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Staff Name"),
                  ))
                ],
              ),
              //  staff Father Name
              20.h,
              TextField(
                controller: _staffFathersNoController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Father's Name"),
              ),
              //    Marital Status
              20.h,
              TextField(
                controller: _staffMaritalStatusNoController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: " Marital Status"),
              ),

              //    Contact No.
              20.h,
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter 10 digit number ";
                  }
                  if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                    return 'Enter a valid 10-digit contact number';
                  }
                  return null;
                },
                controller: _staffContectNoController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Contact No."),
              ),
              //   Aadhar No.
              20.h,
              TextField(
                controller: _staffAadharNoController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Aadhar No."),
              ),
              // pan no.
              20.h,
              TextFormField(
                controller: _staffPanNoController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Pan No."),
              ),
              // Address
              20.h,
              TextField(
                controller: _staffAddressController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Address."),
              ),
              // Account No.
              20.h,
              TextField(
                controller: _staffAccountNoController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Account No."),
              ),
              // Ifsc Code
              20.h,
              TextField(
                controller: _staffIfscCodeController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "IFSC Code."),
              ),
              // Bank Name.
              20.h,
              TextField(
                controller: _staffBankNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Bank Name."),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 343,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xff225663)),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
