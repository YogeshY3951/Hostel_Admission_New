import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Hostel_Admission/screens/Rooms_Screen.dart';
import 'package:Hostel_Admission/screens/Wing_Allot.dart';
import 'package:Hostel_Admission/screens/details_screen.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF90294A),
        title: const Text(
          "Admin",
          style: TextStyle(fontSize: 24, fontFamily: 'YOUR_FONT_FAMILY'),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color.fromARGB(255, 219, 208, 208),
      //   elevation: 10,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         size: 40,
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.notification_add_outlined, //change
      //         size: 40,
      //       ),
      //       label: 'Notices',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.account_circle_rounded, //change
      //         size: 40,
      //       ),
      //       label: 'Profile',
      //     ),
      //   ],
      //   selectedItemColor: Color.fromARGB(255, 188, 8, 8),
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Container(
              height: 275,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/gcek.jpg"),
                    fit: BoxFit.cover),
              ),
              // child: // Foreground widget here
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "MANAGE HOSTEL",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 30,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  child: Column(
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 80,
                                width: 130,
                                child: Column(
                                  children: const [
                                    Icon(
                                      Icons.account_box_rounded,
                                      size: 40,
                                      color: Color.fromARGB(255, 188, 8, 8),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "DETAILS",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            VerticalDivider(
                              endIndent: 17,
                              width: 30,
                              color: Color.fromARGB(92, 0, 0, 0),
                              thickness: 2,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RoomScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 80,
                                width: 130,
                                child: Column(
                                  children: const [
                                    Icon(
                                      // Icons.account_box_rounded,
                                      Icons.repeat, // change
                                      size: 40,
                                      color: Color.fromARGB(255, 188, 8, 8),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "ROOMS",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 23, left: 30, right: 30),
                        child: Divider(
                          color: Color.fromARGB(92, 0, 0, 0),
                          thickness: 2,
                        ),
                      ),
                      IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => WingAllot(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 80,
                                  width: 130,
                                  child: Column(
                                    children: const [
                                      Icon(
                                        // Icons.account_box_rounded,
                                        Icons.add_home_work_outlined, //change
                                        size: 40,
                                        color: Color.fromARGB(255, 188, 8, 8),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "WING ALLOT",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const VerticalDivider(
                                endIndent: 17,
                                width: 30,
                                color: Color.fromARGB(92, 0, 0, 0),
                                thickness: 2,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RoomScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 80,
                                  width: 130,
                                  child: Column(
                                    children: const [
                                      Icon(
                                        // Icons.list_outlined,
                                        Icons.library_books_outlined, //change
                                        size: 40,
                                        color: Color.fromARGB(255, 188, 8, 8),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "MERIT LIST",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
