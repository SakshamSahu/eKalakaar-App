import 'package:ekalakaar_app/screens/Onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
    navigateToNextPage();
  }

  void navigateToNextPage() async {
    await Future.delayed(Duration(seconds: 7));
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Onboarding3(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: screenSize.width,
                  height: screenSize.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/images/Onboarding_background.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 80,
                top: 445,
                child: Container(
                  width: 241,
                  height: 281,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Onboarding_picture.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 130,
                top: 200,
                child: SizedBox(
                  width: 151,
                  height: 96.43,
                  child: Image(
                    image: AssetImage('assets/images/eK_Logo_Transparent.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 325,
                child: SizedBox(
                  width: 293,
                  height: 70,
                  child: Text(
                    'eKalakaar',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sansitaSwashed(
                      color: Color(0xFFAD2F3B),
                      fontSize: 65,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 411,
                child: SizedBox(
                  width: 300,
                  height: 17,
                  child: Text(
                    'Art Beyond Entertainment',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sansitaSwashed(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 3.98,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 149,
                child: Text(
                  'Welcome to',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
