import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onetime/screens/registerScreen/register_screen.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 34 / 100,
            ),
            Container(
              margin: const EdgeInsets.only(left: 35),
              child: Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: HexColor('373B55')
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "your registered email",
                  hintStyle: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 171, 171, 173),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(63, 217, 220, 223),
                  contentPadding: const EdgeInsets.only(
                    left: 27,
                    top: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "your password",
                  hintStyle: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 171, 171, 173),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(63, 217, 220, 223),
                  contentPadding: const EdgeInsets.only(
                    left: 27,
                    top: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'Forgot password ?',
                textAlign: TextAlign.right,
                style: GoogleFonts.poppins(
                    color: HexColor('373B55'), fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 41 / 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: HexColor('ABABAD'),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          PageTransition(
                            child: const RegisterScreen(),
                            type: PageTransitionType.rightToLeft,
                          ),
                        );
                      },
                      child: Text(
                        'Create account',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: HexColor('53B176'),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
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
                      onPressed: () {},
                      child: Text(
                        'Login',
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
            )
          ]),
    );
  }
}
