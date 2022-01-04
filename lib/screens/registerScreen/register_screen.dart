import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onetime/screens/screens.dart';
import 'package:onetime/widgets/text_button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:email_auth/email_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  bool passwordVisibility = false;
  bool passwordVisibility2 = false;
  final formKey = GlobalKey<FormState>();

  signup() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => OtpVerificationScreen(
          emailController.text,
          passwordController.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height -
            MediaQuery.of(context).viewInsets.bottom,
        child: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 34 / 100,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  child: Text(
                    'Register',
                    style: GoogleFonts.poppins(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: HexColor('373B55'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          onChanged: (_) => setState(() {}),
                          validator: (value) {
                            if (value == '') {
                              return 'Field is required';
                            }
                            if (!RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!)) {
                              return 'Invalid Email';
                            }
                          },
                          controller: emailController,
                          style: GoogleFonts.poppins(
                            color: HexColor('373B55'),
                            fontSize: 14,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: emailController.text.isNotEmpty
                                ? InkWell(
                                    onTap: () => setState(
                                      () => emailController.clear(),
                                    ),
                                    child: Icon(
                                      Icons.clear,
                                      color: HexColor('ADADAD'),
                                      size: 18,
                                    ),
                                  )
                                : null,
                            hintText: "your email address",
                            hintStyle: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 171, 171, 173),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(63, 217, 220, 223),
                            contentPadding: const EdgeInsets.only(
                              left: 27,
                              top: 12,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          key: const ValueKey('password'),
                          validator: (value) {
                            if (value == '') {
                              return 'Field is required';
                            }
                            if (value != passwordController2.text) {
                              return 'Password not matched';
                            }
                            if (value!.length < 6) {
                              return 'should be minimum of above 6 characters';
                            }
                          },
                          obscureText: !passwordVisibility,
                          controller: passwordController,
                          style: GoogleFonts.poppins(
                            color: HexColor('373B55'),
                            fontSize: 14,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => passwordVisibility = !passwordVisibility,
                              ),
                              child: Icon(
                                passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: HexColor('ADADAD'),
                                size: 18,
                              ),
                            ),
                            hintText: "create password",
                            hintStyle: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 171, 171, 173),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(63, 217, 220, 223),
                            contentPadding: const EdgeInsets.only(
                              left: 27,
                              top: 12,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          validator: (value) {
                            if (value == '') {
                              return 'Field is required';
                            }
                            if (value != passwordController.text) {
                              return 'Password not matched';
                            }
                            if (value!.length < 6) {
                              return 'should be minimum of above 6 characters';
                            }
                          },
                          obscureText: !passwordVisibility2,
                          controller: passwordController2,
                          style: GoogleFonts.poppins(
                            color: HexColor('373B55'),
                            fontSize: 14,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () =>
                                    passwordVisibility2 = !passwordVisibility2,
                              ),
                              child: Icon(
                                passwordVisibility2
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: HexColor('ADADAD'),
                                size: 18,
                              ),
                            ),
                            hintText: "confirm password",
                            hintStyle: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 171, 171, 173),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(63, 217, 220, 223),
                            contentPadding: const EdgeInsets.only(
                              left: 27,
                              top: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 33,
                  ),
                  child: Row(
                    children: [
                      TextButtonWidget(
                        'Already a user?',
                        () {
                          Navigator.of(context).pushReplacement(
                            PageTransition(
                              child: const LoginScreen(),
                              type: PageTransitionType.leftToRight,
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 41 / 100,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 141, 209, 95),
                              Color.fromARGB(255, 83, 177, 118)
                            ],
                          ),
                        ),
                        child: TextButton(
                          onPressed: signup,
                          child: Text(
                            'Signup',
                            style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                )
              ]),
        ),
      ),
    );
  }
}
