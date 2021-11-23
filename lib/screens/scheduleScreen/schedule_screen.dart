import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onetime/widgets/schedule_widget.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  static const routeName = '/schedule';

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
              bottom: 25,
            ),
            child: Text(
              'Schedule',
              style: GoogleFonts.poppins(
                color: HexColor('373B55'),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ScheduleWidget('Orange', 'Fruit', 'assets/items/orange.png', 'Mon, Wed, Fri', 10),
          const ScheduleWidget('Onion', 'Vegetable', 'assets/items/onion.png', 'Daily', 2),
        ],
      ),
    );
  }
}
