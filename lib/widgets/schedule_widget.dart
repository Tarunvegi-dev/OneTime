import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget(this.title, this.category, this.image, this.schedule, this.quantity,
      {Key? key})
      : super(key: key);

  final String title;
  final String category;
  final String image;
  final String schedule;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 25,
      ),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(63, 217, 220, 223),
          offset: Offset(
            2.0,
            2.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          offset: Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ), //BoxShadow
      ], borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 12,
            ),
            height: 80,
            width: 80,
            child: Image(
              image: AssetImage(image),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 12,
              left: 17,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    color: HexColor('373B55'),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  category,
                  style: GoogleFonts.poppins(
                      color: HexColor('ABABAD'),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  height: 30,
                  width: 148,
                  margin: const EdgeInsets.only(
                    top: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: HexColor('DADADA'), width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          schedule,
                          style: GoogleFonts.poppins(
                            color: HexColor('53B176'),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset('assets/icons/schedule.svg'),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12, bottom: 5),
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 141, 209, 95),
                      Color.fromARGB(255, 83, 177, 118)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(125),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: SvgPicture.asset('assets/icons/add.svg'),
                ),
              ),
              Text(
                quantity.toString(),
                style: GoogleFonts.poppins(
                  color: HexColor('373B55'),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 24,
                width: 24,
                margin: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  color: HexColor('E5F4DF'),
                  borderRadius: BorderRadius.circular(125),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: SvgPicture.asset('assets/icons/minus.svg'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
