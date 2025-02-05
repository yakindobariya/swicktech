import 'package:flutter/material.dart';
import 'package:swicktech/constant/export.dart';
import 'package:swicktech/screen/add_homework_assignment_screen.dart';

class HomeworkScreen extends StatefulWidget {
  const HomeworkScreen({super.key});

  @override
  State<HomeworkScreen> createState() => _HomeworkScreenState();
}

class _HomeworkScreenState extends State<HomeworkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Homework"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // search field
            TextField(
              onTap: () {},
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: "Search Keyword",
                  labelStyle: GoogleFonts.inter(
                      fontWeight: FontWeight.w500, fontSize: 14),
                  hintText: "Enter Search Keyword",
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 30,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Filter
                InkWell(
                  child: Container(
                    height: 56,
                    width: 115,
                    decoration: BoxDecoration(
                        color: const Color(0xffDFF9FF),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.search,
                          color: Color(0xff225663),
                          size: 35,
                        ),
                        Text(
                          "Filter",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                // Add homework
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const AddHomeworkAssignmentScreen(),
                        ));
                  },
                  child: Container(
                    width: 208,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xff225663)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.add,
                          size: 35,
                          color: Colors.white,
                        ),
                        Text(
                          "Add Homework",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}