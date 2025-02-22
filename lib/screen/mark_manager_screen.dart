import 'package:flutter/material.dart';
import 'package:swicktech/screen/remark_entry_screen.dart';

import '../constant/export.dart';

class MarkManagerScreen extends StatefulWidget {
  const MarkManagerScreen({super.key});

  @override
  State<MarkManagerScreen> createState() => _MarkManagerScreenState();
}

class _MarkManagerScreenState extends State<MarkManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Marks Manager"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Marks Manager
            ListTile(
              onTap: () {},
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffE0FFF0),
                    borderRadius: BorderRadius.circular(16)
                ),
                child: const Icon(Icons.star_border),
              ),
              title: Text("Marks Manager",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 16),),
              trailing: const Icon(Icons.arrow_forward),
            ),
            // Remark Entry
            10.h,
            ListTile(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const RemarkEntryScreen(),));},
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffC2E9FF),
                    borderRadius: BorderRadius.circular(16)
                ),
                child: const Icon(Icons.person),
              ),
              title: Text("Remark Entry",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 16),),
              trailing: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),

    );
  }
}
