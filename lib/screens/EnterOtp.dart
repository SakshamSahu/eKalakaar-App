import 'package:ekalakaar_app/screens/MobileNumber.dart';
import 'package:flutter/material.dart';

class EnterOtp extends StatelessWidget {
  const EnterOtp({super.key});
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
                  left: 120,
                  top: 195,
                  child: Text(
                    'Enter your OTP',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 220,
                  top: 271,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MobileNumber(),
                        ),
                      );
                    },
                    child: Text(
                      'Change',
                      style: TextStyle(
                        color: Color(0xFFAD2F3B),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFAD2F3B),
                        decorationThickness: 2.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 115,
                  top: 271,
                  child: Text(
                    '1234567890',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 245,
                  child: Text(
                    'Enter the OTP sent to your mobile number',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.699999988079071),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 462,
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => (),
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
