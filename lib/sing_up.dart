import 'package:flutter/material.dart';
import 'package:flutter_application_2/sing_in.dart';
import 'package:google_fonts/google_fonts.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.keyboard_arrow_left, size: 45)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Container(
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: Text(
                  "Create account and enjoy all services",
                  style: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xfff808D9E),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                height: 48,
                width: 335,
                color: Color(0xfffE9ECF2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/google.png', height: 24, width: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Sign in with Google",
                        style: GoogleFonts.urbanist(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 20,
                width: 328,
                child: Row(
                  children: [
                    Container(width: 140, child: Divider()),
                    SizedBox(width: 10),
                    Text("OR", style: TextStyle(color: Color(0xfff808D9E))),
                    SizedBox(width: 10),
                    Container(width: 140, child: Divider()),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Container(
                width: 335,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Type your username",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Image.asset('assets/user.png'),
                  ),
                ),
              ),

              SizedBox(height: 15),

              Container(
                width: 335,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Type your email",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Image.asset('assets/mail.png'),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 335,
                height: 60,

                child: TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: "Type your password",

                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Image.asset('assets/lock.png'),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
SizedBox(height: 15,),
              Container(
               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "I agree to the company ",
                          style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xfff808D9E),
                            ),
                          ),
                        ),
                        
                        Text(
                      "Term of Service and Privacy Policy",
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                      ],
                    ),
                    
                  ],
                ),
              ),
SizedBox(height: 30,),

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
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),
              Center(
                child: Container(
                  width: 190,
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "Have an account? ",
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
                              MaterialPageRoute(builder: (_) => SingUp()),
                            );
                          },
                          child: Text(
                            "Sign in",
                            style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0xfff0062FF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
