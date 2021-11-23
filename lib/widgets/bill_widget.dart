import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class BillWidget extends StatefulWidget {
  const BillWidget({Key? key}) : super(key: key);

  @override
  State<BillWidget> createState() => _BillWidgetState();
}

class _BillWidgetState extends State<BillWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(63, 217, 220, 223),
            offset: Offset(
              1.0,
              1.0,
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
        ],
      ),
      child: Container(
        margin: const EdgeInsets.only(
          top: 8,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'JLDAS7001',
                      style: GoogleFonts.poppins(
                        color: HexColor('ABABAD'),
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'April 13, 2021',
                      style: GoogleFonts.poppins(
                        color: HexColor('373B55'),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  child: SvgPicture.asset(_isExpanded
                      ? 'assets/icons/arrow_up.svg'
                      : 'assets/icons/arrow_down.svg'),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            if (_isExpanded)
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 15,
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 30 / 100,
                          child: Text(
                            'Orange',
                            style: GoogleFonts.poppins(
                              color: HexColor('53B176'),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 20 / 100,
                          child: Text(
                            '12 pieces',
                            style: GoogleFonts.poppins(
                              color: HexColor('ABABAD'),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 10 / 100,
                          child: Text(
                            '₹ 120',
                            style: GoogleFonts.poppins(
                              color: HexColor('ABABAD'),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 20 / 100,
                          child: Text(
                            'Tomato',
                            style: GoogleFonts.poppins(
                              color: HexColor('53B176'),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 10 / 100,
                          child: Text(
                            '2 Kg',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              color: HexColor('ABABAD'),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 10 / 100,
                          child: Text(
                            '₹ 80',
                            style: GoogleFonts.poppins(
                              color: HexColor('ABABAD'),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 20 / 100,
                          child: Text(
                            'Brinjal',
                            style: GoogleFonts.poppins(
                              color: HexColor('53B176'),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 10 / 100,
                          child: Text(
                            '1 Kg',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              color: HexColor('ABABAD'),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 10 / 100,
                          child: Text(
                            '₹ 30',
                            style: GoogleFonts.poppins(
                              color: HexColor('ABABAD'),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Divider(
                      color: HexColor('DADADA'),
                      thickness: 1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: GoogleFonts.poppins(
                            color: HexColor('53B176'),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '₹ 230',
                          style: GoogleFonts.poppins(
                            color: HexColor('007FFF'),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
