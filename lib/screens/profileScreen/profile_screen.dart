import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onetime/screens/profileScreen/form_field_widget.dart';
import 'package:intl/intl.dart';
import 'package:onetime/widgets/apartment_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const routeName = '/profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  DateTime _currentDate = DateTime.now();
  String gender = 'Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: GoogleFonts.poppins(
                      color: HexColor('373B55'),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: HexColor('E2F3DA'),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    height: MediaQuery.of(context).size.height * 14 / 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage('assets/user.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 26,
                    margin: const EdgeInsets.only(
                      bottom: 40,
                    ),
                    decoration: BoxDecoration(
                      color: HexColor('F1F3F6'),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Update Image',
                        style: GoogleFonts.poppins(
                          color: HexColor('373B55'),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const FormFieldWidget(
                        'Name',
                        'Deva Don',
                        key: ValueKey(1),
                      ),
                      Container(
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
                                'Date of Birth',
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
                                readOnly: true,
                                controller: TextEditingController(
                                  text:
                                      DateFormat.yMMMMd().format(_currentDate),
                                ),
                                style: GoogleFonts.poppins(
                                  color: HexColor('373B55'),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                ),
                                decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                    onTap: () async {
                                      final _pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1970),
                                        lastDate: DateTime(2050),
                                      );
                                      if (_pickedDate != null &&
                                          _pickedDate != _currentDate) {
                                        setState(() {
                                          _currentDate = _pickedDate;
                                        });
                                      }
                                    },
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: HexColor('373B55'),
                                    ),
                                  ),
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
                                  contentPadding:
                                      const EdgeInsets.only(left: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const FormFieldWidget(
                        'Email address',
                        'mdevaraju764@gmail.com',
                        key: ValueKey(3),
                      ),
                      const FormFieldWidget(
                        'Mobile number',
                        '+91 799744XXX2',
                        key: ValueKey(4),
                      ),
                      Container(
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
                                'Gender',
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
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: HexColor('DADADA'),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: DropdownButton(
                                  isExpanded: true,
                                  underline: const SizedBox(),
                                  value: gender,
                                  items: <String>['Male', 'Female', 'Others']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: GoogleFonts.poppins(
                                          color: HexColor('373B55'),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      FocusScope.of(context).requestFocus(
                                        FocusNode(),
                                      );
                                      gender = value.toString();
                                    });
                                  },
                                  iconEnabledColor: HexColor('373B55'),
                                  iconSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 24, right: 24, bottom: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Apartment Stations',
                              style: GoogleFonts.poppins(
                                color: HexColor('53B176'),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '+ Add more',
                              style: GoogleFonts.poppins(
                                color: HexColor('ABABAD'),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      const ApartmentWidget(
                        name: 'Kanchana Towers',
                        imageUrl:
                            'https://images.pexels.com/photos/439391/pexels-photo-439391.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        address: 'Pattabhipuram 2nd lane, near Masjid',
                        city: 'Guntur, AndhraPradesh, 522006',
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
