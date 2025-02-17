import 'package:flutter/material.dart';

class UploadDownloadScreen extends StatefulWidget {
  const UploadDownloadScreen({super.key});

  @override
  State<UploadDownloadScreen> createState() => _UploadDownloadScreenState();
}

class _UploadDownloadScreenState extends State<UploadDownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Download"),
        centerTitle: true,
      ),
    );
  }
}
