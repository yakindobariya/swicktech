import 'package:flutter/material.dart';

class RollNumberUpdationScreen extends StatefulWidget {
  const RollNumberUpdationScreen({super.key});

  @override
  State<RollNumberUpdationScreen> createState() =>
      _RollNumberUpdationScreenState();
}

class _RollNumberUpdationScreenState extends State<RollNumberUpdationScreen> {
  List<TextEditingController> controllers =
      List.generate(6, (index) => TextEditingController(                   
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Roll No Updation",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://www.shutterstock.com/image-photo/profile-photo-young-girl-wearing-260nw-2397752523.jpg"), // Replace with actual image path
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Adm No. 9696",
                                  style: TextStyle(color: Colors.grey)),
                              Text(
                                "Yahvi Sarna",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text("Mr. Gautam Sarna",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: TextField(
                            controller: controllers[index],
                            decoration: InputDecoration(
                              hintText: "Enter..",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1F4E5F),
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.check,
                color: Colors.white,
              ),
              label: const Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
