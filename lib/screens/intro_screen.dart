import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(180),
                bottomRight: Radius.circular(180),
              ),
            ),
            child: Center(
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
          Container(
            margin: const EdgeInsets.only(bottom: 100),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 42),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [HexColor('8DD15F'), Colors.green],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: TextButton(
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
