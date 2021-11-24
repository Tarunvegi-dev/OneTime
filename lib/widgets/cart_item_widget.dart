import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget(this.title, this.image, this.price, this.quantity,
      {Key? key})
      : super(key: key);

  final String title;
  final String image;
  final int price;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 9,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage(image),
                  width: 42,
                  height: 42,
                ),
                const SizedBox(
                  width: 17,
                ),
                SizedBox(
                  width: 136,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          color: HexColor('373B55'),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₹ $price',
                        style: GoogleFonts.poppins(
                          color: HexColor('ABABAD'),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.only(
                    right: 8,
                  ),
                  decoration: BoxDecoration(
                    color: HexColor('E5F4DF'),
                    borderRadius: BorderRadius.circular(125),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: SvgPicture.asset('assets/icons/minus.svg'),
                  ),
                ),
                SizedBox(
                  width: 20,
                  child: Text(
                    quantity.toString(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: HexColor('373B55'),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.only(
                    left: 8,
                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
