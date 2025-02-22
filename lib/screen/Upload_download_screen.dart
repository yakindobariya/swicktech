import 'package:flutter/material.dart';

import '../constant/export.dart';

class UploadDownloadScreen extends StatefulWidget {
  const UploadDownloadScreen({super.key});

  @override
  State<UploadDownloadScreen> createState() => _UploadDownloadScreenState();
}

class _UploadDownloadScreenState extends State<UploadDownloadScreen> {
  List download = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Download"),
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
              download.isEmpty
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
          ],
        ),
      ),

    );
  }
}
