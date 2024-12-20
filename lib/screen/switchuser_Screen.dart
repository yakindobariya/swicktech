import 'package:flutter/material.dart';

class SwitchUserScreen extends StatefulWidget {
  const SwitchUserScreen({super.key});

  @override
  State<SwitchUserScreen> createState() => _SwitchUserScreenState();
}

class _SwitchUserScreenState extends State<SwitchUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch User"),centerTitle: true,),
    );
  }
}
