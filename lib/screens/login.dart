import 'package:ekalakaar_app/screens/ForgotPassword.dart';
import 'package:ekalakaar_app/screens/SignUp.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
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
                  left: 110,
                  top: 182,
                  child: Text(
                    'Login to your account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 32,
                  top: 252,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 32,
                  top: 338,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 283,
                  child: Container(
                    width: 312,
                    height: 40,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          color: Colors.black.withOpacity(0.20000000298023224),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      textCapitalization: TextCapitalization.none,
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 369,
                  child: Container(
                    width: 312,
                    height: 40,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          color: Colors.black.withOpacity(0.20000000298023224),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter your password',
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 250,
                  top: 419,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFFAD2F3B),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 160,
                  top: 540,
                  child: Text(
                    'Or login with',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  left: 70,
                  top: 680,
                  child: Row(
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10),
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
                          'Register Now',
                          style: TextStyle(
                            color: Color(0xFFAD2F3B),
                            fontSize: 15,
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
                  top: 470,
                  right: 24,
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
                        /* Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MobileNumber(),
                            ),
                          );*/
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'Login',
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
                  left: 40,
                  top: 591,
                  right: 40,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 140,
                        height: 41,
                        child: MaterialButton(
                          onPressed: () {
                            // Add your desired action here when the Google button is pressed
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          elevation: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/images/google_icon.png'),
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
                      SizedBox(
                          width: 50), // Add some spacing between the buttons
                      SizedBox(
                        width: 140,
                        height: 41,
                        child: MaterialButton(
                          onPressed: () {
                            // Add your desired action here when the Facebook button is pressed
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          elevation: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/images/facebook_icon.png'),
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
                    ],
                  ),
                ),
                Positioned(
                  left: 125,
                  top: 70,
                  child: SizedBox(
                    width: 151,
                    height: 96.43,
                    child: Image(
                      image:
                          AssetImage('assets/images/eK_Logo_Transparent.png'),
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
