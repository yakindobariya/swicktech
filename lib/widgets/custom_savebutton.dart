import 'package:flutter/material.dart';

import '../constant/export.dart';

class CustomSavebutton extends StatefulWidget {
  const CustomSavebutton({super.key});

  @override
  State<CustomSavebutton> createState() => _CustomSavebuttonState();
}

class _CustomSavebuttonState extends State<CustomSavebutton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 343,
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xff225663)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.save_outlined,
                size: 40,
                color: Colors.white,
              ),
              Text(
                "Save",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
