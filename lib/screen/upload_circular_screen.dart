import 'package:flutter/material.dart';
import 'package:swicktech/screen/add_circular_screen.dart';

import '../constant/export.dart';

class UploadCircularScreen extends StatefulWidget {
  const UploadCircularScreen({super.key});

  @override
  State<UploadCircularScreen> createState() => _UploadCircularScreenState();
}

class _UploadCircularScreenState extends State<UploadCircularScreen> {
  List circular = []; // empty list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circular"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            // search field
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Search Keyword",
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
            // no record found
            Expanded(
              child: 
              circular.isEmpty
                  ? Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "lib/assets/app_image/no_record_found.png",
                          width: 244,
                          height: 187,
                        ),
                        Text(
                          "No Record Found !",
                          style: GoogleFonts.inter(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "There was no record based on the details\nWhat you’re looking for has not been added\nyet.",
                          style: GoogleFonts.inter(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                        10.h,
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 160,
                            height: 49,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.black),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.refresh,
                                  color: Colors.white,
                                ),
                                5.w,
                                Text(
                                  "Retry Page",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
                  : 
              ListView.builder(
                itemCount: 20, // Example content
                itemBuilder: (context, index) {
                  return const ListTile();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
                  // Add circular
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddCircularScreen(),
                          ));
                    },
                    child: Container(
                      width: 208,
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xff225663)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.add,
                            size: 35,
                            color: Colors.white,
                          ),
                          Text(
                            "Add Circular",
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
              ),
            )
          ],
        ),
      ),

    );
  }
}
