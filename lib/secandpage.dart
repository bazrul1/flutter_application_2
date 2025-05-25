import 'package:flutter/material.dart';
import 'package:flutter_application_2/onboarding_2.dart';
import 'package:google_fonts/google_fonts.dart';

class Secandpage extends StatefulWidget {
  const Secandpage({Key? key}) : super(key: key);

  @override
  _SecandpageState createState() => _SecandpageState();
}

class _SecandpageState extends State<Secandpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 424,
              width: 375,
              child: Image.asset('assets/figma 1.png', fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 2, width: 100, color: Color(0xfff0062FF)),
                SizedBox(width: 10),
                Container(height: 2, width: 100, color: Color(0xfffE9ECF2)),
                SizedBox(width: 10),
                Container(height: 2, width: 100, color: Color(0xfffE9ECF2)),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: 260,
              child: Text(
                "Easy Way to Get Better Life",
                style: GoogleFonts.urbanist(
                  textStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.w700,color: Color(0xfff242B42)),
                ),
                textAlign: TextAlign.center
              ),
            ),
        
        SizedBox(height: 30,),
            Container(
              width: 265,
              child: Text(
                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat.",
                style: GoogleFonts.urbanist(
                  textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xfff7E8CA0)),
                ),
                textAlign: TextAlign.center
              ),
            ),
        SizedBox(height: 30,),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
          color: Color(0xfff0062FF),
          ),
          width: 56,
          height: 56,
          child: IconButton(onPressed: (){Navigator.push(context, 
          MaterialPageRoute(builder: (cntext)=> Onboarding2 ()));}, 
          icon: Icon(Icons.arrow_forward_outlined,
          color: const Color.fromARGB(255, 255, 255, 255),
          )
        ),
        
        
        )
          ],
          
        ),
      ),
    );
  }
}
