import 'package:flutter/material.dart';
import 'package:flutter_application_2/sing_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeV1 extends StatefulWidget {
  const HomeV1({Key? key}) : super(key: key);

  @override
  _HomeV1State createState() => _HomeV1State();
}

class _HomeV1State extends State<HomeV1> {

logout () async {
  SharedPreferences BS = await SharedPreferences.getInstance();
  BS.setString("login", "false");
  Navigator.push(context, MaterialPageRoute(builder: (_) =>  SingIn()));
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 153, 236, 216),
        title: Text(
          "Coca Studio",
          style: GoogleFonts.urbanist(
            textStyle: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          

Center(
  child: Container(
    width: 100,
    height: 40,
    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 122, 232, 217),) ,
    
    child: InkWell(child: 
    Center(
      child: Text('Logout',style: TextStyle(fontSize: 20,
      fontWeight: FontWeight.w700,color: Colors.red),),
    ), onTap: () => logout()),
  ),
),
        
        ],
        
      ),
    );
  }
}

        
