import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget(this.title, this.value, {Key? key}) : super(key: key);

  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24),
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: HexColor('53B176'),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 47,
            margin: const EdgeInsets.only(
              left: 20,
            ),
            child: TextFormField(
              style: GoogleFonts.poppins(
                color: HexColor('373B55'),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              initialValue: value,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: HexColor('DADADA'),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: HexColor('DADADA'),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.only(left: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
