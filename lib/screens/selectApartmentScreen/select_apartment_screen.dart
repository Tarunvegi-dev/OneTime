import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onetime/screens/mainScreen/main_screen.dart';
import 'package:onetime/widgets/apartment_widget.dart';

class SelectApartmentScreen extends StatelessWidget {
  const SelectApartmentScreen({Key? key}) : super(key: key);

  static const routeName = '/selectApartment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
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
              'Select Apartment',
              style: GoogleFonts.poppins(
                color: HexColor('373B55'),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            height: 55,
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Container(
                  margin: const EdgeInsets.only(
                    left: 15,
                    right: 12,
                  ),
                  child: Icon(
                    Icons.search_rounded,
                    color: HexColor('8DD15F'),
                  ),
                ),
                hintText: "Type your Apartment name",
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
                  left: 27,
                  top: 13,
                ),
              ),
            ),
          ),
          const SizedBox(height: 44),
          const ApartmentWidget(
            key: ValueKey(1),
            name: 'SkyLark Apartments',
            imageUrl:
                'https://is1-3.housingcdn.com/4f2250e8/10b912f7ce91c4bce00ab7c904d6b3cf/v0/fs/home_green_apartment-ramamurthy_nagar-bengaluru-home_builders.jpeg',
            address: 'Pattabhipuram 6th lane near swami theatre',
            city: 'Guntur, AndhraPradesh 521202',
          ),
          const ApartmentWidget(
            key: ValueKey(2),
            name: 'Kanchana Towers',
            imageUrl:
                'https://images.pexels.com/photos/439391/pexels-photo-439391.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
            address: 'Pattabhipuram 2nd lane near masid',
            city: 'Guntur, AndhraPradesh 521202',
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(
          bottom: 20,
          right: 5
        ),
        width: MediaQuery.of(context).size.width * 40 / 100,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(63, 217, 220, 223),
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(MainScreen.routeName);
          },
          child: Text(
            'skip for now',
            style: GoogleFonts.poppins(
              color: HexColor('373B55'),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
