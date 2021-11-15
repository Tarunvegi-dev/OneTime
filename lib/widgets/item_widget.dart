import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onetime/screens/screens.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget(this.name, this.image, this.category, this.price, {Key? key})
      : super(key: key);

  final dynamic name;
  final dynamic image;
  final dynamic category;
  final dynamic price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ItemScreen.routeName);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
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
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  margin: const EdgeInsets.only(right: 6, top: 6),
                  decoration: BoxDecoration(
                    color: HexColor('53B176'),
                    borderRadius: BorderRadius.circular(125),
                  ),
                  child: Text(
                    '1',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 103,
              width: 134,
              child: Image(
                image: AssetImage(
                  image,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      color: HexColor('373B55'),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    category,
                    style: GoogleFonts.poppins(
                      color: HexColor('ABABAD'),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '₹ $price ',
                        style: GoogleFonts.poppins(
                          color: HexColor('53B176'),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        category == 'Fruit' ? ' /piece' : category == 'Diary' ? ' /packet' : ' /kg',
                        style: GoogleFonts.poppins(
                            color: HexColor('ABABAD'),
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    width: 44,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: HexColor('FF8515'),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(6.0),
                      margin: const EdgeInsets.only(left: 4),
                      child: SvgPicture.asset('assets/bag.svg'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
