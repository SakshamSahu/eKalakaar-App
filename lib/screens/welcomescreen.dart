import 'package:ekalakaar_app/screens/MobileNumber.dart';
import 'package:ekalakaar_app/screens/SignUp.dart';
import 'package:ekalakaar_app/screens/login.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
            decoration: const BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.5,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/Chitrasen GOTIPUA Odisha 1.jpg'),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 350,
                  top: 40,
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
                Positioned(
                  left: 117,
                  top: 170,
                  child: SizedBox(
                    height: screenSize.height * 0.08,
                    width: screenSize.width * 0.4,
                    child: const Text(
                      'Welcome to \neKalakaar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 46,
                  top: 250,
                  child: SizedBox(
                    height: screenSize.height * 0.11,
                    width: screenSize.width * 0.75,
                    child: Text(
                      'eKalakaar (eK) is building the first integrated technology-enabled platform that will connect Opportunity seekers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  right: 24,
                  top: 480,
                  child: Container(
                    width: 312,
                    height: 40,
                    padding: const EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFAD2F3B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MobileNumber(),
                          ),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'Continue with mobile number',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  width: 200,
                  height: 21,
                  top: 550,
                  left: 120,
                  child: Row(
                    children: [
                      Text(
                        'Or login with',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 8),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: Color(0xFFAD2F3B),
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 620,
                  right: 230,
                  child: SizedBox(
                    width: 120,
                    height: 41,
                    child: MaterialButton(
                      onPressed: () {
                        // Add your desired action here when the button is pressed
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/google_icon.png'),
                            width: 20,
                            height: 20,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 230,
                  top: 620,
                  right: 24,
                  child: SizedBox(
                    width: 120,
                    height: 41,
                    child: MaterialButton(
                      onPressed: () {
                        // Add your desired action here when the button is pressed
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image:
                                AssetImage('assets/images/facebook_icon.png'),
                            width: 20,
                            height: 20,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Facebook',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 706,
                  left: 70,
                  child: Row(
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          );
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Color(0xFFAD2F3B),
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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
