import 'package:flutter/material.dart';

import '../constant/export.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  _onBoardingScreenState createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  final PageController _controller = PageController();
  bool _isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              _isLastPage = index == 2; // Assuming 3 pages for onboarding
            });
          },
          children: [
            buildOnboardingPage(
              context,
              "lib/app_image/onboarding1.png",
              "Security",
              "Highest security at user level, module level, form level & database level.",
            ),
            buildOnboardingPage(
              context,
              "lib/app_image/onboarding2.png",
              "User Friendly",
              "Simple and attractive user interface, enriched with modern, intuitive and easy-to-use GUI compontents.",
            ),
            buildOnboardingPage(
              context,
              "lib/app_image/onboarding3.png",
              "Compatibility",
              "Similar experience across all devices as it is mobile and tablet friendly",
            ),
          ],
        ),
        bottomSheet: _isLastPage
            ? Container(
                height: 70,
                width: double.maxFinite,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 56,
                          width: 120,
                          decoration: const BoxDecoration(
                              color: Color(0xffdff9ff),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextButton(
                              onPressed: () =>
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (_) => const Verification()),
                                  ),
                              child: Text("Skip",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: const Color(0xff225663),
                                  )))),
                      Container(
                          height: 56,
                          width: 120,
                          decoration: const BoxDecoration(
                              color: Color(0xff225663),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextButton(
                              onPressed: () =>
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (_) => const Verification()),
                                  ),
                              child: Text("Next",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: const Color(0xffFCFCFC),
                                  )))),
                    ],
                  ),
                ),
              )
            : Container(
                height: 70,
                width: double.maxFinite,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 56,
                        width: 120,
                        decoration: const BoxDecoration(color: Color(0xffdff9ff),borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: TextButton(
                          onPressed: () => _controller.jumpToPage(2),
                          child: Text("Skip",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: const Color(0xff225663),
                              )),
                        ),
                      ),
                      Container(
                        height: 56,
                        width: 120,
                        decoration: const BoxDecoration(color: Color(0xff225663),borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: TextButton(
                          onPressed: () => _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease),
                          child: Text("Next",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: const Color(0xffFCFCFC),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ));
  }

  Widget buildOnboardingPage(
      BuildContext context, String imagePath, String title, String subtitle) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 200),
          const SizedBox(height: 20),
          Text(title,
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 32)),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Text(subtitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
