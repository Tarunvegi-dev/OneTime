import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onetime/widgets/bill_widget.dart';

class BillsScreen extends StatelessWidget {
  const BillsScreen({Key? key}) : super(key: key);

  static const routeName = '/bills';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 24,
                bottom: 25,
              ),
              child: Row(
                children: [
                  Text(
                    'Bills',
                    style: GoogleFonts.poppins(
                      color: HexColor('373B55'),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 82,
              decoration: BoxDecoration(
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
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Due',
                          style: GoogleFonts.poppins(
                            color: HexColor('ABABAD'),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '₹ 500',
                              style: GoogleFonts.poppins(
                                color: HexColor('373B55'),
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'only',
                              style: GoogleFonts.poppins(
                                color: HexColor('ABABAD'),
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                      color: HexColor('E8F6DF'),
                    ),
                    child: Center(
                      child: Text(
                        'Pay',
                        style: GoogleFonts.poppins(
                          color: HexColor('53B176'),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                left: 26,
                bottom: 15,
              ),
              child: Text(
                'Unpaid',
                style: GoogleFonts.poppins(
                  color: HexColor('53B176'),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const BillWidget(),
            const BillWidget(),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                left: 26,
                bottom: 15,
              ),
              child: Text(
                'Paid',
                style: GoogleFonts.poppins(
                  color: HexColor('53B176'),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const BillWidget(),
            const BillWidget()
          ],
        ),
      ),
    );
  }
}
