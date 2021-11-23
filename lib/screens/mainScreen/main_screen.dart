import 'package:flutter/material.dart';
import 'package:onetime/screens/screens.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> widgets = const [
    HomeScreen(),
    ScheduleScreen(),
    Scaffold(),
    BillsScreen(),
    ProfileScreen(),
  ];

  int currentIndex = 0;

  dynamic navigate(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 6.5 / 100,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              onTap: () {
                navigate(0);
              },
              child: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  currentIndex == 0
                      ? 'assets/icons/home_active.svg'
                      : 'assets/icons/home.svg',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                navigate(1);
              },
              child: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  currentIndex == 1
                      ? 'assets/icons/schedule_active.svg'
                      : 'assets/icons/schedule.svg',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                navigate(2);
              },
              child: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset('assets/icons/cart.svg'),
              ),
            ),
            GestureDetector(
              onTap: () {
                navigate(3);
              },
              child: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  currentIndex == 3
                      ? 'assets/icons/bills_active.svg'
                      : 'assets/icons/bills.svg',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                navigate(4);
              },
              child: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  currentIndex == 4
                      ? 'assets/icons/profile_active.svg'
                      : 'assets/icons/profile.svg',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
