import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:google_fonts/google_fonts.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/app_image/onboarding4.png"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Institute Verification",
              style: GoogleFonts.inter(fontSize: 30),
            ),
            PinCodeFields(length: 4,onComplete: (output){
              print("object");
            })
          ],
        ),
      ),
    );
  }
}
