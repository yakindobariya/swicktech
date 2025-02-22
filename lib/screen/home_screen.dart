import 'package:flutter/material.dart';
import 'package:swicktech/screen/document_screen.dart';
import 'package:swicktech/screen/mark_manager_screen.dart';
import 'package:swicktech/screen/student_photo_screen.dart';

import '../constant/export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

String? selectedYear; // Stores the selected value
final List<String> year = ['2022-23', '2023-24', '2024-25'];

PageController pageController = PageController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: const Text("Home"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    print("press refresh");
                  },
                  child: const Icon(Icons.refresh),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      print("press notification");
                    },
                    child: const Icon(Icons.notifications_active_outlined),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    height: 38,
                    width: 130,
                    decoration: BoxDecoration(
                      color: const Color(0xffDFF9FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Image(
                              image: AssetImage(
                                  "lib/assets/app_image/SwicktechLogo.png")),
                        ),
                        Text(
                          "Swicktech",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: DrawerMenu(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Yakin.",
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w600, fontSize: 24),
                      ),
                      Text(
                        "Master Admin",
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: const Color(0xff545454cc)),
                      ),
                      Text(
                        "Last Login is 12 Jan 2024, 9:49 AM",
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color(0xff545454cc)),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: CustomDropdownFormField(
                          items: ["2022-23", "2023-24", "2024-25"],
                          labelText: "Year",
                        )),
                  )
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 180, initialPage: 3),
              items: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffE4F0FF),
                        borderRadius: BorderRadius.circular(22)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Communication Analytics",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              Text(
                                "Account summary sms/notification data",
                                style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              10.h,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFFBCA6),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: const Icon(Icons.bar_chart),
                                  ),
                                  10.w,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "38,062",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Communication Balance",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10),
                                      ),
                                      10.h,
                                      Text(
                                        "0",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "App Notifications Balance",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                              "lib/assets/homescreen_image/sliderFill.png"),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffE4F0FF),
                        borderRadius: BorderRadius.circular(22)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Account Analytics",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              Text(
                                "Account summary income/expense data",
                                style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              10.h,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffC2FBD1),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: const Icon(Icons.pie_chart),
                                  ),
                                  10.w,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "12,389",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Total Income",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10),
                                      ),
                                      10.h,
                                      Text(
                                        "0",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Total Expense",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                              "lib/assets/homescreen_image/sliderFill.png"),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffE4F0FF),
                        borderRadius: BorderRadius.circular(22)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Users Analytics",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              Text(
                                "User summary student / staff / user data",
                                style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              10.h,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffBEDCFF),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: const Icon(
                                        Icons.supervised_user_circle_outlined),
                                  ),
                                  10.w,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "283",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Total Student",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10),
                                      ),
                                      10.h,
                                      Text(
                                        "30",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Total Staff",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                              "lib/assets/homescreen_image/sliderFill.png"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Text(
                    "Quick Action",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  // new student
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/newStudent.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "New\nStudent",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // add staff
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const StaffRegistrationScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/AddStaff.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Add\nStaff",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // student attendance
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const MarkStudentAttendanceScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/StudentAttendance.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Student\nAttendance",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // send sms
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SendSmsScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/SendSms.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Send\nSms",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // upload homework
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UploadHomeworkScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/uploadHomework.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Upload\nHomework",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // upload notice
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UploadNoticeScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/uploadNotice.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Upload\nNotice",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // upload syllabus
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UploadSyllabusScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/uploadSyllabus.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "upload\nSyllabus",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // upload circular
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UploadCircularScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/UploadCircular.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Upload\nCircular",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // school news
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SchoolNewsScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/SchoolNews.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "School\nNews",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // upload download
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UploadDownloadScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/UploadDownload.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Upload\nDownloads",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // document
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DocumentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/Document.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Document",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // marks manager
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MarkManagerScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/MarksManager.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Marks\nManager",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // student photo
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StudentPhotoScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/StudentPhoto.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Student\nPhoto",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // staff photo
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/StaffPhoto.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Staff\nPhoto",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // leave management
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/LeaveManagement.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Leave\nManagement",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ptm
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/PTM.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "PTM",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/MasterUpdate.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Master Update",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/Chat.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Chat",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/Visitor.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Visitor",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/StaffAttendance.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "PTM",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/TeacherTimetable.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Teacher\nTimetable",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Important Link",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/StudentBirthday.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Student\nBirthday",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/StaffBirthday.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Staff\nBirthday",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Reports",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/StudentList.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Student\nList",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/StaffBirthday.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Staff\nList",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/AttendanceReports.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Attendance\nReports",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewStudentScreen(),
                          ));
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                "lib/assets/homescreen_image/FinanceAccount.png"),
                            height: 35,
                            width: 35,
                          ),
                          Text(
                            "Finance/\nAccount",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
