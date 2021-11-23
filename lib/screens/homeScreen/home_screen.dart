import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onetime/widgets/item_widget.dart';
import './items_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 51,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: GoogleFonts.poppins(
                          color: HexColor('ABABAD'),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Deva Don',
                      style: GoogleFonts.poppins(
                          color: HexColor('373B55'),
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(right: 22),
                decoration: BoxDecoration(
                  color: HexColor('E5F4DF'),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/notifications.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(63, 217, 220, 223),
                  offset: Offset(
                    3.0,
                    3.0,
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
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    height: 24,
                    width: 24,
                  ),
                ),
                hintText: "Search Grocery",
                hintStyle: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 171, 171, 173),
                  fontSize: 14,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.only(
                  left: 27,
                  top: 12,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'All',
                    style: GoogleFonts.poppins(
                      color: HexColor('8DD15F'),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      color: HexColor('8DD15F'),
                      borderRadius: BorderRadius.circular(125),
                    ),
                  ),
                ],
              ),
              Text(
                'Fruits',
                style: GoogleFonts.poppins(
                    color: HexColor('ABABAD'),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'vegetables',
                style: GoogleFonts.poppins(
                    color: HexColor('ABABAD'),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Leafy',
                style: GoogleFonts.poppins(
                    color: HexColor('ABABAD'),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Diary',
                style: GoogleFonts.poppins(
                    color: HexColor('ABABAD'),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 30, bottom: 40),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 20,
                childAspectRatio: 1 / 1.3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return ItemWidget(
                  items[index]['name'],
                  items[index]['image'],
                  items[index]['category'],
                  items[index]['price'],
                  index,
                );
              },
              itemCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}
