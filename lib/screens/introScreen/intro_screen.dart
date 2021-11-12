import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import '../screens.dart';

class Introscreen extends StatelessWidget {
  const Introscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -125.0,
            left: -30.0,
            right: null,
            bottom: null,
            child: Container(
              width: 450,
              height: 450,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                shape: BoxShape.circle,
              ),
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 15 / 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Buy Groceries',
                      style: GoogleFonts.poppins(
                        decoration: TextDecoration.none,
                        fontSize: 30,
                        color: HexColor('8DD15F'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Delivered before the first light',
                      style: GoogleFonts.poppins(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 82 / 100,
            left: MediaQuery.of(context).size.width * 1 / 4,
            right: null,
            bottom: null,
            width: MediaQuery.of(context).size.width * 1 / 2,
            height: 60,
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 141, 209, 95),
                      Color.fromARGB(255, 83, 177, 118)
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50)),
              child: TextButton(
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    PageTransition(
                      child: const RegisterScreen(),
                      type: PageTransitionType.fade,
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
