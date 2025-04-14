import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swicktech/screen/home_screen.dart';
import 'package:swicktech/service/firebase_service.dart';

import '../constant/export.dart';

class SignInWithPasswordScreen extends StatefulWidget {
  const SignInWithPasswordScreen({super.key});

  @override
  State<SignInWithPasswordScreen> createState() =>
      _SignInWithPasswordScreenState();
}

class _SignInWithPasswordScreenState extends State<SignInWithPasswordScreen> {
  static const KEYLOGIN = "login";
  @override
  void initState ()
  {
    whereToGo();
  }
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  FirebaseService firebaseService = FirebaseService();
  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in with Password"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("lib/assets/app_image/SwicktechLogo.png"),
              const SizedBox(
                height: 10,
              ),
              Text(
                "ENTER PASSWORD",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 24),
              ),
              Text(
                "Please enter the Education Wheels App Password",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 40,
              ),
              // username/mobile no.
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _usernameController,
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
              // password
              10.h,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w600, fontSize: 14),
                      hintText: "Password",
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password ?",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: const Color(0xff121112),
                          decoration: TextDecoration.underline),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: () => HomeScreen(),
                  // onPressed: () async{
                    // var sharedPref = await SharedPreferences.getInstance();
                    // sharedPref.setBool(SplashScreenState.KEYLOGIN, true);
                    // _signin();
                  // },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: const Color(0xff225663),
                  ),
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: const Color(0xffFCFCFC)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signin() async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    User? user =
        await firebaseService.signInWithEmailAndPassword(username, password);
    try {
      if (user != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Center(
              child: Text(
            "User is signing in",
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          )),
          backgroundColor: Colors.blue,
          duration: const Duration(seconds: 1),
        ));
        print("user is signin");
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Center(
              child: Text(
            "please enter true email",
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          )),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 1),
        ));
      }
    } catch (e) {
      print("Error $e");
    }
  }
  Future<void> whereToGo() async {
    var sharespref = await SharedPreferences.getInstance();
    var isLoggedIn = sharespref.getBool(KEYLOGIN);


    if (isLoggedIn!= null)
    {
      if(isLoggedIn)
      {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      }
      else
      {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const SignInWithPasswordScreen()));
      }
    }
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const SignInWithPasswordScreen()));

  }

}
