import 'package:flutter/material.dart';
import 'package:swicktech/constant/export.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({super.key});

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Document"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {},
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                color: const Color(0xffFFC5C5),
                  borderRadius: BorderRadius.circular(16)
                ),
                child: const Icon(Icons.person),
              ),
              title: Text("Student",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 16),),
              trailing: const Icon(Icons.arrow_forward),
            ),
            10.h,
            ListTile(
              onTap: () {},
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                color: const Color(0xffFFE0F3),
                  borderRadius: BorderRadius.circular(16)
                ),
                child: const Icon(Icons.group),
              ),
              title: Text("Staff",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 16),),
              trailing: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
