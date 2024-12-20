import 'package:flutter/material.dart';
import 'package:swicktech/screen/switchuser_Screen.dart';

import '../constant/export.dart';

class DrawerMenu extends StatelessWidget {
  final List<Map<String, dynamic>> drawerItems = [
    {
      "title": "Home",
      "icon": Icons.home_outlined,
      "iconColor": const Color(0xff07A2B7),
      "bgColor": const Color(0xffCEF6FF),
    },
    {
      "title": "Profile",
      "icon": Icons.person,
      "iconColor": const Color(0xff07A2B7),
      "bgColor": const Color(0xffD3E2FF),
    },
    {
      "title": "Switch User",
      "icon": Icons.group_outlined,
      "iconColor": const Color(0xffFF0CAC),
      "bgColor": const Color(0xffFFDAF7),
    },
    {
      "title": "2 FA Authentication",
      "icon": null, // Custom image
      "image": "lib/assets/app_image/authenticationIcon.png",
      "bgColor": const Color(0xffE5FFEF),
    },
    {
      "title": "Change Password",
      "icon": Icons.vpn_key,
      "iconColor": const Color(0xff07A2B7),
      "bgColor": const Color(0xffFFF3C7),
    },
    {
      "title": "Share",
      "icon": Icons.share,
      "iconColor": const Color(0xff07A2B7),
      "bgColor": const Color(0xffF3E7FF),
    },
    {
      "title": "Privacy Policy",
      "icon": Icons.privacy_tip_outlined,
      "iconColor": const Color(0xff07A2B7),
      "bgColor": const Color(0xffFFEAC0),
    },
    {
      "title": "FAQ",
      "icon": Icons.question_mark,
      "iconColor": const Color(0xff07A2B7),
      "bgColor": const Color(0xffE8E8E8),
    },
    {
      "title": "App Update",
      "icon": Icons.settings_rounded,
      "iconColor": const Color(0xff07A2B7),
      "bgColor": const Color(0xffE9EAFF),
    },
    {
      "title": "Logout",
      "icon": Icons.logout_outlined,
      "iconColor": const Color(0xff07A2B7),
      "bgColor": const Color(0xffFFE5EE),
    },
  ];

  DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: drawerItems.length + 1, // +1 for DrawerHeader
        itemBuilder: (context, index) {
          if (index == 0) {
            return SizedBox(
              height: 100,
              child: DrawerHeader(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                          image: AssetImage("lib/assets/app_image/SwicktechLogo.png"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Swicktech",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "MASTER-ADMIN",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }

          final item = drawerItems[index - 1]; // Adjust index for ListView
          return ListTile(
            title: Text(
              item["title"],
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: item["bgColor"],
              ),
              child: item["icon"] != null
                  ? Icon(
                item["icon"],
                color: item["iconColor"],
              )
                  : Image.asset(item["image"], height: 24, width: 24),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              switch (index) {
                case 1:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                  break;

                case 2:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));

                case 3:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SwitchUserScreen(),));

              }
            },
          );
        },
      ),
    );
  }
}
