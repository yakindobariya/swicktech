import 'dart:async';
import 'package:flutter/material.dart';

import '../constant/export.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const KEYLOGIN = "login";
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      // Navigate to the main app screen after 3 seconds
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
    });
    // whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your splash screen image or logo here
            Image.asset('lib/assets/app_image/SwicktechLogo.png', height: 200),
          ],
        ),
      ),
    );
  }
  // void whereToGo() async{
  //   var sharespref = await SharedPreferences.getInstance();
  //   var isLoggedIn = sharespref.getBool(KEYLOGIN);
  //
  //
  //   Timer(const Duration(seconds: 3), () {
  //     // Navigate to the main app screen after 3 seconds
  //
  //     if (isLoggedIn!= null)
  //     {
  //       if(isLoggedIn)
  //       {
  //         Navigator.of(context).pushReplacement(
  //             MaterialPageRoute(builder: (context) => const HomeScreen()));
  //       }
  //       else
  //       {
  //         Navigator.of(context).pushReplacement(
  //             MaterialPageRoute(builder: (context) => const SignInWithPasswordScreen()));
  //       }
  //     }
  //     Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(builder: (context) => const SignInWithPasswordScreen()));
  //
  //   });
  // }
}



