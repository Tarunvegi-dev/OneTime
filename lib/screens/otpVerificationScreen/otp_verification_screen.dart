import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../screens.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  static const routeName = '/otpVerification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 34 / 100,
            ),
            Container(
              margin: const EdgeInsets.only(left: 35),
              child: Text(
                'Verify OTP',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: HexColor('373B55')
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 65,
              child: TextField(
                cursorColor: HexColor('373B55'),
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: HexColor('373B55'),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  hintText: "Enter 6 digit code",
                  hintStyle: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 171, 171, 173),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(63, 217, 220, 223),
                  contentPadding: const EdgeInsets.only(
                    top: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 33,
              ),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend Code',
                      style: GoogleFonts.poppins(
                        color: HexColor('53B176'),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 41 / 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 141, 209, 95),
                          Color.fromARGB(255, 83, 177, 118)
                        ],
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(DetailsFormScreen.routeName);
                      },
                      child: Text(
                        'Verify',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'You can resend code in 60 sec',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: HexColor('ABABAD'), fontWeight: FontWeight.w500),
            ),
          ],
        ));
  }
}
