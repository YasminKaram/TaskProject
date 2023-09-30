import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskproject/Screen1.dart';

class Screen3 extends StatefulWidget {
  static const String routeName = "Screen3";

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int index = 0;
  int value = 0;
  List<String> items = ["Discover", "News", "Most Viewed", "Saved"];
  List<int>image=[3,4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset("assets/images/Flower.png"),
                Text(
                  "AliceCare",
                  style: GoogleFonts.milonga(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 24),
                )
              ],
            ),
          )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          index = value;
        },
        elevation: 3,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: ".",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
              ),
              label: "."),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: "."),
        ],
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Color(0xff027A48), fontSize: 25),
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Color(0xff667085),
        selectedItemColor: Color(0xff6941C6),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            enabled: true,
            decoration: InputDecoration(
                enabled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffD0D5DD), width: 2)),
                hintText: "Articles, Video, Audio and More,...",
                hintStyle: TextStyle(
                    color: Color(0xff667085),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 10,
              children: List.generate(
                4,
                (index) {
                  return Row(
                    children: [
                      ChoiceChip(
                        padding: EdgeInsets.all(8),
                        label: Text(' ${items[index]}'),
                        selectedColor: Color(0xffF4EBFF),
                        elevation: 1,
                        side: BorderSide(color: Color(0xffE4E7EC)),
                        backgroundColor: Colors.transparent,
                        labelStyle: GoogleFonts.inter(
                            color: value == index
                                ? Color(0xff6941C6)
                                : Color(0xff667085),
                            fontWeight: FontWeight.w500,
                            decorationColor: Colors.cyanAccent,
                            fontSize: 16),
                        selected: value == index,
                        onSelected: (bool selected) {
                          setState(() {
                            value = (selected ? index : null)!;
                          });
                        },
                      ),
                    ],
                  );
                },
              ).toList(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Hot topics",
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              InkWell(
                child: Row(
                  children: [
                    Text(
                      "See all",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff5925DC)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward_ios, color: Color(0xff5925DC), size: 18),
                  ],
                ),
              ),

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Get Tips",
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 2,

            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image.asset("assets/images/${image[index]}.png"),
            );
          },),
        )),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            color: Color(0xffE4E7EC),
            child: Row(children: [
              Expanded(
                  child: Column(
                children: [
                  Image.asset("assets/images/Doctor-PNG-Images 1.png")
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Connect with doctors & get suggestions",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Connect now and get expert insights ",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff7F56D9),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                      ),
                      child: Text(
                        "View detail",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ))
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Cycle Phases and Period",
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              InkWell(
                child: Row(
                  children: [
                    Text(
                      "See all",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff5925DC)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward_ios, color: Color(0xff5925DC), size: 18),
                  ],
                ),
              ),
            ],
          ),
        ),

      ]),
    );
  }
}
