import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutCard extends StatelessWidget {
  String image;
  String txt1;
  String txt2;
  String txt3;


  WorkoutCard(this.image, this.txt1, this.txt2, this.txt3);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color:Color(0xffEAECF5
        ) ,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          txt1,
                          style: GoogleFonts.inter(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xff989696),width: 1)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                     txt2,
                      style: GoogleFonts.inter(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      txt3,
                      style: GoogleFonts.inter(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Icon(Icons.alarm,color: Colors.black,),
                        SizedBox(width: 5,),
                        Text(
                          "30 mins",
                          style: GoogleFonts.inter(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),

                      ],),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(children: [
              Image.asset(image,)
            ],),
          )
        ]),
      ),
    );
  }
}
