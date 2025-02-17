import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:swicktech/constant/export.dart';
import 'package:swicktech/screen/School_news_detail_screen.dart';

class AddSchoolNewsScreen extends StatefulWidget {
  const AddSchoolNewsScreen({super.key});

  @override
  State<AddSchoolNewsScreen> createState() => _AddSchoolNewsScreenState();
}

class _AddSchoolNewsScreenState extends State<AddSchoolNewsScreen> {
  final _formKey = GlobalKey<FormState>();
  late int _selectedNewsFor = 1;
  final List<String> _newsFor = ["Student", "Staff", "Public", "Schedule"];

  final TextEditingController _newsDateController = TextEditingController();
  final TextEditingController _newsUptoDateController = TextEditingController();
  final TextEditingController _newsTitleController = TextEditingController();
  final TextEditingController _newsUrlController = TextEditingController();
  final TextEditingController _newsDescriptionController =
      TextEditingController();
  final TextEditingController _newsReferenceController =
      TextEditingController();

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat("dd/MM/yyyy").format(pickedDate);
      setState(() {
        controller.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add School News"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              // news date
              10.h,
              Row(children: [
                Expanded(
                  child: TextFormField(
                    controller: _newsDateController,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        labelText: "Date",
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () =>
                                _selectDate(context, _newsDateController),
                            icon: const Icon(Icons.today_sharp))),
                  ),
                ),
                // news upto date
                5.w,
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.datetime,
                    controller: _newsUptoDateController,
                    decoration: const InputDecoration(
                        labelText: "Upto Date", border: OutlineInputBorder()),
                  ),
                ),
              ]),
              // news notice type
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
                    _newsFor.length,
                    (index) => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio<int>(
                          value: index + 1,
                          groupValue: _selectedNewsFor,
                          onChanged: (value) {
                            setState(() {
                              _selectedNewsFor = value!;
                            });
                          },
                        ),
                        Text(_newsFor[index]),
                        const SizedBox(width: 8), // Add spacing between items
                      ],
                    ),
                  ),
                ),
              ),
              // news title
              10.h,
              TextFormField(
                controller: _newsTitleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "News Title",
                ),
              ),
              // news description
              10.h,
              TextFormField(
                maxLines: null,
                controller: _newsDescriptionController,
                decoration: const InputDecoration(
                    labelText: "Description", border: OutlineInputBorder()),
              ),
              // news reference by
              10.h,
              TextFormField(
                controller: _newsReferenceController,
                decoration: const InputDecoration(
                    labelText: " Reference by", border: OutlineInputBorder()),
              ),
              // news upload attachment
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
                    controller: _newsUrlController,
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

              10.h,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SchoolNewsDetailScreen(
                            newsDate: _newsDateController.text,
                            newsUptoDate: _newsUptoDateController.text,
                            newsTitle: _newsTitleController.text,
                            newsDescription: _newsDescriptionController.text,
                            newsReferenceBy: _newsReferenceController.text,
                            newsUrlLink: _newsUrlController.text,
                            newsFor: [_selectedNewsFor],
                          ),
                        ));
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Valid date entered")),
                      );
                    }
                  },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
