import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(this.label, this.onPressed, {Key? key})
      : super(key: key);

  final String label;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return TextButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: HexColor('53B176'),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
