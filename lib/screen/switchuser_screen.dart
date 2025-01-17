import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwitchUserScreen extends StatefulWidget {
  const SwitchUserScreen({super.key});

  @override
  State<SwitchUserScreen> createState() => _SwitchUserScreenState();
}

class _SwitchUserScreenState extends State<SwitchUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch User"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: const Color(0xffF1F1F1),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign In",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          "Select Account For Login",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 130,
                          height: 45,
                          decoration: BoxDecoration(
                            color: const Color(0xff225663),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                "Add User",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.white),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: ListTile(
                onTap: () {},
                shape: const LinearBorder(),
                leading: const Image(
                  image: AssetImage("lib/assets/app_image/SwicktechLogo.png"),
                  height: 70,
                  width: 70,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mr. Yakin",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      "Master Admin",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xff225663)),
                    ),
                    Text(
                      "Swicktech Solution",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xff225663)),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.arrow_forward),
              ),
            )
          ],
        ),
      ),
    );
  }
}
