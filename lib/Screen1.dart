import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskproject/home.dart';

class Screen1 extends StatefulWidget {
  static const String routeName = "Screen1";

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
int index=0;

  List<int> item = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Row(children: [
            Image.asset("assets/images/logo.png"),
            SizedBox(
              width: 5,
            ),
            Text(
              "Moody",
              style: GoogleFonts.robotoSlab(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w400),
            )
          ]),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Badge(
                child: Image.asset(
                  "assets/images/Icon.png",
                  color: Colors.black,
                  fit: BoxFit.cover,
                  width: 27.48,
                  height: 29,
                ),
                largeSize: 10,
                alignment: Alignment.topRight,
                smallSize: 10,
              ),
            )
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Hello,",
                          style: GoogleFonts.inter(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ),
                      Text(
                        "Sara Rose",
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "How are you feeling today ?",
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  child: Image.asset("assets/images/Frame.png",
                                      width: 60, fit: BoxFit.fill),
                                  backgroundColor: Color(0xFFE4E7EC),
                                  radius: 35,
                                ),
                                Text(
                                  "Love",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  child: Image.asset("assets/images/Frame 10.png",
                                      width: 60, fit: BoxFit.fill),
                                  backgroundColor: Color(0xFFE4E7EC),
                                  radius: 35,
                                ),
                                Text(
                                  "Cool",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  child: Image.asset("assets/images/Frame 8.png",
                                      width: 60, fit: BoxFit.fill),
                                  backgroundColor: Color(0xFFE4E7EC),
                                  radius: 35,
                                ),
                                Text(
                                  "Happy",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  child: Image.asset("assets/images/Frame 12.png",
                                      width: 60, fit: BoxFit.fill),
                                  backgroundColor: Color(0xFFE4E7EC),
                                  radius: 35,
                                ),
                                Text(
                                  "Sad",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Feature",
                        style: GoogleFonts.inter(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "See more",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff027A48)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.arrow_forward_ios,
                          color: Color(0xff027A48), size: 18),
                    ],
                  ),
                ),
                CarouselSlider(
                  items: item.map((i) {
                    return Builder(
                      builder: (context) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Positive vibes",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Boost your mood with ",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Positive vibes",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                "assets/images/_Play button.png"),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "10 mins",
                                              style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/Walking the Dog.png",
                                        width: 100,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          color: Color(0xffECFDF3),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(
                      seconds: 3,
                    ),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.2,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                DotsIndicator(
                    dotsCount: item.length,
                    onTap: (position) {
                      position++;
                      setState(() {});
                    },
                    decorator: DotsDecorator(
                        size: Size(12, 10),
                        activeSize: Size(12, 10),
                        color: Color(0xffD9D9D9),
                        activeColor: Color(0xff98A2B3),
                        spacing: EdgeInsets.symmetric(horizontal: 1))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Exercise",
                        style: GoogleFonts.inter(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "See more",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff027A48)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.arrow_forward_ios,
                          color: Color(0xff027A48), size: 18),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Color(0xffF9F5FF),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        "assets/images/Frame1.png",
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Relaxtion")
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Color(0xffF9F5FF),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        "assets/images/Frame3.png",
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Beathing"
                                          "")
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Color(0xffF9F5FF),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        "assets/images/Frame2.png",
                                      ),
                                      Text("Meditation")
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Color(0xffF9F5FF),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        "assets/images/Frame4.png",
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text("Yoga"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ]),
            )),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            index=value;
            setState(() {


            });
          },

          elevation: 1,
          currentIndex: index,
            items:[BottomNavigationBarItem(icon: Icon(Icons.home),label:".",),
              BottomNavigationBarItem(icon: Icon(Icons.grid_view),label:"."),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined),label:"."),
              BottomNavigationBarItem(icon: Icon(Icons.person),label:".")] ,
            backgroundColor: Colors.white,
            selectedLabelStyle: TextStyle(color: Color(0xff027A48),fontSize: 20),
            type: BottomNavigationBarType.shifting,
            unselectedItemColor: Color(0xff667085),
            selectedItemColor: Color(0xff027A48),),
      ),
    );
  }
}
