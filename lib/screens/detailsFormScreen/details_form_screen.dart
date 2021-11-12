import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailsFormScreen extends StatefulWidget {
  const DetailsFormScreen({Key? key}) : super(key: key);

  static const routeName = '/detailsForm';

  @override
  State<DetailsFormScreen> createState() => _DetailsFormScreenState();
}

class _DetailsFormScreenState extends State<DetailsFormScreen> {
  String gender = 'Male';

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
            height: MediaQuery.of(context).size.height * 10 / 100,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 35,
            ),
            child: Text(
              'Complete Profile',
              style: GoogleFonts.poppins(
                color: HexColor('373B55'),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: HexColor('F3F5F7'),
                borderRadius: BorderRadius.circular(125),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(125),
                child: const Image(
                  image: AssetImage(
                    'assets/user_profile.jpeg',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Upload Image',
              style: GoogleFonts.poppins(
                color: HexColor('53B176'),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Your Name",
                hintStyle: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 171, 171, 173),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
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
            height: 25,
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.date_range,
                  color: HexColor('ABABAD'),
                ),
                hintText: "Date of Birth",
                hintStyle: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 171, 171, 173),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
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
            height: 25,
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Container(
                  margin: const EdgeInsets.only(left: 25, right: 10),
                  child: Text(
                    '+91',
                    style: GoogleFonts.poppins(
                      color: HexColor('373B55'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 0, minHeight: 0),
                hintText: "Mobile number",
                hintStyle: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 171, 171, 173),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
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
            height: 25,
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(63, 217, 220, 223),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: DropdownButton(
                isExpanded: true,
                underline: const SizedBox(),
                value: gender,
                items: <String>['Male', 'Female', 'Others']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: GoogleFonts.poppins(
                        color: HexColor('ABABAD'),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
                iconEnabledColor: HexColor('ABABAD'),
                iconSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
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
                'Save & Proceed',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
