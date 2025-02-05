import 'package:flutter/material.dart';
import 'package:swicktech/constant/export.dart';

class SendSmsScreen extends StatefulWidget {
  const SendSmsScreen({super.key});

  @override
  State<SendSmsScreen> createState() => _SendSmsScreenState();
}

class _SendSmsScreenState extends State<SendSmsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Send SMS"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              20.h,
              // compose sms
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ComposeSmsScreen(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white70,
                  ),
                  height: 89,
                  child: Center(
                    child: ListTile(
                      title: Text(
                        "Compose SMS",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xffE5FFEF),
                          ),
                          height: 50,
                          width: 50,
                          child: const Icon(
                            Icons.sms,
                            size: 30,
                          )),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
                  ),
                ),
              ),
              // student sms
              5.h,
              InkWell(
                onTap: () => const HomeScreen(),
                child: Container(
                  height: 89,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white70,
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text(
                        "Student SMS",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xffFFC5C5),
                          ),
                          height: 50,
                          width: 50,
                          child: const Icon(
                            Icons.person,
                            size: 30,
                          )),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
                  ),
                ),
              ),
              // staff sms
              5.h,
              InkWell(
                onTap: () => const HomeScreen(),
                child: Container(
                  height: 89,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white70,
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text(
                        "Staff SMS",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xffFFE0F3),
                          ),
                          height: 50,
                          width: 50,
                          child: const Icon(
                            Icons.group_outlined,
                            size: 30,
                          )),
                      trailing: const Icon(Icons.arrow_forward),
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
