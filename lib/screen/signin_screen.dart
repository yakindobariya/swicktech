import 'package:flutter/material.dart';

import '../constant/export.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("lib/assets/app_image/SwicktechLogo.png")),
            // username
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Username / Mobile No.",
                    labelStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w600, fontSize: 14),
                    hintText: "Enter Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15)),
              ),
            ),
            10.h,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: const Color(0xff225663),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  child: Text(
                    "Sign in with OTP",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Or With",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: const Color(0xff91919F)),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInWithPasswordScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: const Color(0xffFFC224),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  child: Text(
                    "Sign in with Password",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: const Color(0xff212325)),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                },
                style: const ButtonStyle(),
                child: Text(
                  "Forgot Password ?",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500, fontSize: 16,decoration: TextDecoration.underline),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
