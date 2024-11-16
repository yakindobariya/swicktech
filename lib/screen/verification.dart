import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swicktech/screen/sign_in.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final String Verificationcode = '1234';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/app_image/onboarding4.png"),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Institute Verification",
              style: GoogleFonts.inter(fontSize: 30),
            ),
            PinCodeFields(
              length: 4,
              borderRadius: BorderRadius.circular(100),
              margin: const EdgeInsets.all(20),
              fieldHeight: 40,
              animation: Animations.grow,
              onComplete: (output) {
                if (output == Verificationcode) {
                } else {}
              },
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Find your Institute Code",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sign_in(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: const Color(0xff225663),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  child: Text(
                    "Verify",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
