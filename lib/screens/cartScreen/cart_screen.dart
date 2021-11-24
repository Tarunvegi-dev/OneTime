import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onetime/widgets/cart_item_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 54,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 24,
              bottom: 32,
            ),
            child: Text(
              'My Cart',
              style: GoogleFonts.poppins(
                  color: HexColor('373B55'),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 82,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total',
                          style: GoogleFonts.poppins(
                            color: HexColor('ABABAD'),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '₹ 315',
                              style: GoogleFonts.poppins(
                                color: HexColor('373B55'),
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'only',
                              style: GoogleFonts.poppins(
                                color: HexColor('ABABAD'),
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Text(
                      'Clear Cart',
                      style: GoogleFonts.poppins(
                        color: HexColor('FB7A72'),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 24,
              bottom: 12,
            ),
            child: Text(
              'Pre Scheduled',
              style: GoogleFonts.poppins(
                color: HexColor('53B176'),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const CartItemWidget(
            'Orange',
            'assets/items/orange.png',
            120,
            10,
          ),
          const CartItemWidget(
            'Milk',
            'assets/items/milk.png',
            25,
            1,
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 12, left: 24),
            child: Text(
              'Today added',
              style: GoogleFonts.poppins(
                color: HexColor('53B176'),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const CartItemWidget(
            'Tomato',
            'assets/items/tomato.png',
            140,
            2,
          ),
          const CartItemWidget(
            'Cabbage',
            'assets/items/cabage.png',
            30,
            1,
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: HexColor('E5F4DF'),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text(
                  'All items in the cart will be delivered next day you can pay the amount weekly once',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: HexColor('53B176'),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
