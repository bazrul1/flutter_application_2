import 'package:flutter/material.dart';
import 'package:flutter_application_2/sing_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {

String? _errorMessage;

final RegExp _regex = RegExp(r'^[1-9][A-Za-z]{7}$');


void _validateInput(String value) {
setState(() {

if (value.length != 8) {

_errorMessage = "Text must be exactly 8 characters long.";

} else if (!_regex.hasMatch(value)) {

_errorMessage =

"Invalid input. Start with a digit (1-9) and include uppercase and lowercase letters.";

} else {

_errorMessage = null;
}

});

}




  
  bool _isChecked = false;
  bool _obscureText = true;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  UserRegister() async {
    SharedPreferences BS = await SharedPreferences.getInstance();
    if (name.text == "" ||email.text == "" || password.text == "") {
      print("empty");
    } else {
      BS.setString("name", name.text);
      BS.setString("email", email.text);
      BS.setString("password", password.text);
      Navigator.push(context, MaterialPageRoute(builder: (_) => SingIn()));
    }
  }
TextEditingController passCtr = TextEditingController();
String passtext = "";

Widget Statuswidget(String msg,{ bool ? isok = false}){
  return Container(
    child:Row(
      children: [
        Icon(isok==true?   Icons.check:Icons.close,
        color: isok == true? Colors.green : Colors.red,
        size: 20,
        ),
        SizedBox(width: 5,),
        Text("mes",)

      ],
    ) ,
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, size: 40),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
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
              Card(
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
              SizedBox(height: 20),

              Container(
                width: 335,
                height: 60,
                child: TextField(
                  controller: name,
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
                  controller: email,
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
                  controller: password,
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
              SizedBox(height: 15),
              if(passtext.length > 1)
             Column(
              children: [

               Statuswidget("Minimum 8 characters"),
              Statuswidget("Atleast 1 number (1-9)"),
              Statuswidget("Atleast lowercase or uppercase letters"),
             ],),
              SizedBox(height: 15),

              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child: Checkbox(
                      value: _isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue!;
                        });
                      },
                    ),
                  ),

                  SizedBox(width: 3),
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

                  SizedBox(width: 3),

                  Text(
                    "Term of Service",
                    style: GoogleFonts.urbanist(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  SizedBox(width: 3),
                  Text(
                    "and",
                    style: GoogleFonts.urbanist(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfff808D9E),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    "Privacy Policy",
                    style: GoogleFonts.urbanist(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),
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
                    await UserRegister();
                  },
                  child: Text(
                    'Sing up',
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
                              MaterialPageRoute(builder: (_) => SingIn()),
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
