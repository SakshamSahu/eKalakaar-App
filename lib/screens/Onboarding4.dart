import 'package:ekalakaar_app/screens/welcomescreen.dart';
import 'package:flutter/material.dart';

class Onboarding4 extends StatelessWidget {
  const Onboarding4({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
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
                    height: screenSize.height * 0.48,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Onboarding4.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 90,
                  top: 465,
                  child: Text(
                    'EARN OPPORTUNITY',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 512,
                  child: SizedBox(
                    width: screenSize.width * 0.87,
                    height: screenSize.height * 0.15,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Get opportunity by many recruiters by showcasing your portfolio and be ready to entertain the world. Gorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.699999988079071),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Positioned(
                  left: 170,
                  top: 664,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomeScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFAD2F3B),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 180,
                  top: 734,
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.699999988079071),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.48,
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.30000001192092896),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(49),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 350,
                  top: 14,
                  child: SizedBox(
                    width: screenSize.width * 0.13,
                    height: screenSize.height * 0.04,
                    child: Image(
                      image:
                          AssetImage('assets/images/eK_Logo_Transparent1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
