import 'package:flutter/material.dart';
import 'package:swicktech/screen/splash_screen.dart';

import 'constant/export.dart';




void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
