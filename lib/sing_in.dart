import 'package:flutter/material.dart';
import 'package:flutter_application_2/Home_v1.dart';
import 'package:flutter_application_2/sing_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  _SingInState createState() => _SingInState();

}

class _SingInState extends State<SingIn> {
bool _obscureText = true; 
TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


Userlogin() async {
    SharedPreferences BS = await SharedPreferences.getInstance();
    if (email.text == ""|| password.text == "") {
      print("empty");
    } else {
      if (BS.getString("email") != null||BS.getString("password") != null) {
        String emailget = BS.getString("email")!;
        String passwordget = BS.getString("password")!;

        if (emailget == email.text && passwordget == password.text) {
          BS.setString("login", "true");
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomeV1()));
        } else {
          print("Data not valid");
        }
      } else {
        print("No user Sing up");
      }
    }
  }

@override
  void initState() {
    Future.delayed(Duration(microseconds: 2), () async {
      SharedPreferences BS = await SharedPreferences.getInstance();
      if (BS.getString("login") != null) {
        if (BS.getString("login") == "true") {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomeV1()));
        }
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 100),
              Text(
                "Welcome Back!",
                style: GoogleFonts.urbanist(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              Text(
                "Sign In to your account",
                style: GoogleFonts.urbanist(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xfff808D9E),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Card  (
                child: Container(
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
              SizedBox(height: 40),

              Container(
                width: 335,
                height: 60,
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "Type your email",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon:Image.asset('assets/mail.png'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 335,
                height: 60,
                    
                child: TextField(
                  controller: password,
                   obscureText: _obscureText,
                  decoration: InputDecoration(
                    
                    labelText: "Type your password",
                    
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Image.asset('assets/lock.png'),
                    suffixIcon:IconButton(
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

              SizedBox(height: 100),
              Container(
                      height: 50,
                      width: double.maxFinite,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xfff0062FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () async {
                          await Userlogin();
                        },
                        child: Text(
                    'Sing in',
                    style: GoogleFonts.urbanist(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xfffFFFFFF),
                      ),
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
                          "Don’t have account? ",
                          style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff808D9E),
                            ),
                          ),
                        ),
                       
                        GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => SingUp()));
                        },
                          child: Text(
                            "Sign Up",
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




