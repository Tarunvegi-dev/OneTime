import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../homeScreen/items_data.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen(this.itemId, {Key? key}) : super(key: key);

  final int itemId;

  static const routeName = './itemScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -59,
            top: -149,
            right: -59,
            child: Container(
              width: 512,
              height: MediaQuery.of(context).size.height * 60 / 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: HexColor('F6F8FA'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 51,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
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
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SvgPicture.asset(
                          'assets/icons/back_arrow.svg',
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
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
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'assets/icons/schedule_blue.svg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                width: 300,
                child: Hero(
                  tag: itemId,
                  child: Image(
                    image: AssetImage(items[itemId]['image']),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 22,
                  right: 22,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[itemId]['name'],
                          style: GoogleFonts.poppins(
                            color: HexColor('373B55'),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          items[itemId]['category'],
                          style: GoogleFonts.poppins(
                            color: HexColor('ABABAD'),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color: HexColor('E5F4DF'),
                            borderRadius: BorderRadius.circular(125),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: SvgPicture.asset('assets/icons/minus.svg'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          child: Text(
                            '1',
                            style: GoogleFonts.poppins(
                              color: HexColor('373B55'),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 141, 209, 95),
                                Color.fromARGB(255, 83, 177, 118)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(125),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: SvgPicture.asset('assets/icons/add.svg'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 10,
                            color: HexColor('53B176'),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Text(
                            '11g',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          'protiens',
                          style: GoogleFonts.poppins(
                            color: HexColor('ABABAD'),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 10,
                            color: HexColor('FF8515'),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Text(
                            '23g',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          'carbohydrates',
                          style: GoogleFonts.poppins(
                            color: HexColor('ABABAD'),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 10,
                            color: HexColor('FEE507'),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Text(
                            '96',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          'Kcal',
                          style: GoogleFonts.poppins(
                            color: HexColor('ABABAD'),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: GoogleFonts.poppins(
                          color: HexColor('373B55'),
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Oranges are a type of low caclorie, highly nutritious citrus fruit. As part of a healthful and varied diet, oranges contribute to strong, clear skin and can help lower a person\'s risk of many conditions.',
                      style: GoogleFonts.poppins(
                        color: HexColor('ABABAD'),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 8 / 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: HexColor('E8EBEF'),
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            const BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: Stack(
            children: [
              Positioned(
                top: 5,
                child: Text(
                  'Price',
                  style: GoogleFonts.poppins(
                    color: HexColor('ABABAD'),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                top: 17,
                child: Row(
                  children: [
                    Text(
                      '₹${items[itemId]['price']}',
                      style: GoogleFonts.poppins(
                        color: HexColor('373B55'),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 4,
                      ),
                      child: Text(
                        items[itemId]['category'] == 'Fruit' ?  '/piece' : items[itemId]['category'] == 'Diary' ? '/packet' : '/kg',
                        style: GoogleFonts.poppins(
                          color: HexColor('373B55'),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                top: 10,
                child: Container(
                  width: 140,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 141, 209, 95),
                        Color.fromARGB(255, 83, 177, 118)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add to Cart',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
