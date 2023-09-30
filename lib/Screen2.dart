import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskproject/Card%20of%20workout.dart';

class Screen2 extends StatelessWidget {
  static const String routeName = "Screen2";

  int index = 0;
  List<String>txt1=["7 days"," 3 days"];
  List<String>txt2=["Morning Yoga","Plank Exercise"];
  List<String>txt3=["Improve mental focus.","Improve posture and stability."];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/Ellipse 10.png"),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Text(
                    "Hello ,Jada",
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Ready to workout ?",
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ]),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Badge(
                child: Image.asset(
                  "assets/images/Icon.png",
                  color: Colors.black,
                  fit: BoxFit.cover,
                  width: 24.48,
                  height: 29,
                ),
                largeSize: 10,
                alignment: Alignment.topRight,
                smallSize: 9,
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            index = value;
          },
          elevation: 1,
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ".",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.near_me_outlined,
                ),
                label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ".")
          ],
          backgroundColor: Colors.white,
          selectedLabelStyle: TextStyle(color: Color(0xff027A48), fontSize: 25),
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Color(0xff667085),
          selectedItemColor: Color(0xff363F72),
        ),
        body: DefaultTabController(
          length: 4,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: Color(0xffF8F9FC),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset("assets/images/heart.png"),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Heart Rate",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "81",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "BPM",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    child: VerticalDivider(
                      color: Color(0xffD9D9D9),
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.list,color: Color(0xff717BBC)),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "To-do",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "32.5",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "%",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    child: VerticalDivider(
                      color: Color(0xffD9D9D9),
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.local_fire_department,color: Color(0xff717BBC)),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Calo",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "81",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "BPM",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Workout Programs",
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
            ),
            TabBar(
              labelStyle: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  wordSpacing: 2,
                  color: Color(0xff667085)),
              indicatorColor: Color(0xff363F72),
              unselectedLabelColor: Color(0xff667085),
              labelPadding: EdgeInsets.symmetric(vertical: 0.5),
              labelColor: Color(0xff363F72),
              tabs: [
                Tab(
                    child: Align(
                  alignment: Alignment.center,
                  child: Text("All Type"),
                )),
                Tab(
                    child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Full Body",
                    textAlign: TextAlign.center,
                  ),
                )),
                Tab(
                    child: Align(
                  alignment: Alignment.center,
                  child: Text("Upper"),
                )),
                Tab(
                    child: Align(
                  alignment: Alignment.center,
                  child: Text("Lower"),
                ))
              ],
            ),
           Expanded(
             child: ListView.builder(itemCount: 2,
               itemBuilder: (context, index) {
               return WorkoutCard("assets/images/${index+1}.png", txt1[index], txt2[index], txt3[index]);
               
             },),
           )
          ]),
        ),
      ),
    );
  }
}
