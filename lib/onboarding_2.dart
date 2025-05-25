import 'package:flutter/material.dart';
import 'package:flutter_application_2/sing_in.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  _Onboarding2State createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 2, width: 100, color: Color(0xfff0062FF)),
                SizedBox(width: 10),
                Container(height: 2, width: 100, color: Color(0xfffE9ECF2)),
                SizedBox(width: 10),
                Container(height: 2, width: 100, color: Color(0xfffE9ECF2)),
              ],
            ),
          ),
          Container(child: Image.asset('assets/figma.9.png')),
          SizedBox(height: 20),
          Container(
            width: 327,
            child: Text(
              "Plan Your Task Easily and Task Your Plan Instantly",
              style: GoogleFonts.urbanist(
                textStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (cntext) => SingIn()),
              );
            },
            child: Container(
              height: 48,
              width: 328,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xfff0062FF),
              ),

              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: 153,
            child: Row(
              children: [
                Text(
                  "Have an account?",
                  style: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff808D9E),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (cntext) => SingIn()),
                    );
                  },
                  child: Container(
                    child: Text(
                      "Login",
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xfff0062FF),
                        ),
                      ),
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
