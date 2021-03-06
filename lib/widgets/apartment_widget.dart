import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ApartmentWidget extends StatelessWidget {
  const ApartmentWidget({Key? key, 
    required this.name,
    required this.imageUrl,
    required this.address,
    required this.city,
  }) : super(key: key);

  final String name;
  final String imageUrl;
  final String address;
  final String city;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 25,
      ),
      height: 100,
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
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              width: 80,
              height: 100,
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 8,
                ),
                child: Text(
                  name,
                  style: GoogleFonts.poppins(
                      color: HexColor('53B176'),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 60 / 100,
                height: 34,
                child: Text(
                  address,
                  softWrap: true,
                  style: GoogleFonts.poppins(
                    color: HexColor('ABABAD'),
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                city,
                style: GoogleFonts.poppins(
                    color: HexColor('373B55'),
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
