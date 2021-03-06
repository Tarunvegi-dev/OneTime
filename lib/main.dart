import 'package:flutter/material.dart';
import 'package:onetime/screens/mainScreen/main_screen.dart';
import './screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OneTime',
      home: const Introscreen(),
      routes: {
        RegisterScreen.routeName: (context) => const RegisterScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        DetailsFormScreen.routeName: (context) => const DetailsFormScreen(),
        SelectApartmentScreen.routeName: (context) => const SelectApartmentScreen(),
        MainScreen.routeName: (context) => const MainScreen(),
      },
    );
  }
}

