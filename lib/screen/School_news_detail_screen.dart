import 'package:flutter/material.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("News For"),
                Text(newsFor.toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("News Date"),
                Text(newsDate),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("News Upto Date"),
                Text(newsUptoDate),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("News Title"),
                Text(newsTitle),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("News Description"),
                Text(newsDescription),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Reference By"),
                Text(newsReferenceBy),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Url Link"),
                Text(newsUrlLink),
              ],
            ),
          ],
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
