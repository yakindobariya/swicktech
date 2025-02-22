import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swicktech/constant/export.dart';

class SchoolNewsDetailScreen extends StatelessWidget {
  final String newsDate;
  final String newsUptoDate;
  final String newsTitle;
  final String newsDescription;
  final String newsReferenceBy;
  final String newsUrlLink;
  final List newsFor;
  const SchoolNewsDetailScreen(
      {super.key,
      required this.newsFor,
      required this.newsDate,
      required this.newsUptoDate,
      required this.newsTitle,
      required this.newsDescription,
      required this.newsReferenceBy,
      required this.newsUrlLink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Detail"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // news for
                  Text(
                    "News For",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                  Text(
                    newsFor.toString(),
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
              // news date
              10.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News Date",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                  Text(
                    newsDate,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
              // news upto date
              10.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News Upto Date",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                  Text(
                    newsUptoDate,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
              //  news title
              10.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News Title",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                  Text(
                    newsTitle,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
              // news description
              10.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News Description",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                  Text(
                    newsDescription,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
              //  reference by
              10.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reference By",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                  Text(
                    newsReferenceBy,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
              //  url link 
              10.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Url Link",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                  Text(
                    newsUrlLink,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class FirstScreen extends StatefulWidget {
//   const FirstScreen({super.key});
//
//   @override
//   _FirstScreenState createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//   final TextEditingController _controller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('First Screen')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               keyboardType: TextInputType.datetime,
//               decoration: const InputDecoration(labelText: 'Enter Text'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate and pass the text to SecondScreen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => SecondScreen(text: _controller.text),
//                   ),
//                 );
//               },
//               child: const Text('Go to Second Screen'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class SecondScreen extends StatelessWidget {
//   final String text;
//
//   // Receive text via constructor
//   const SecondScreen({super.key, required this.text});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Second Screen')),
//       body: Center(
//         child: Text(
//           'Entered Text: $text',
//           style: const TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
