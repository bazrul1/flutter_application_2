import 'package:flutter/material.dart';
import 'package:flutter_application_2/sing_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeV01 extends StatefulWidget {
  const HomeV01({Key? key}) : super(key: key);

  @override
  _HomeV01State createState() => _HomeV01State();
}

class _HomeV01State extends State<HomeV01> {


logout () async {
  SharedPreferences BS = await SharedPreferences.getInstance();
  BS.setString("login", "false");
  Navigator.push(context, MaterialPageRoute(builder: (_) =>  SingIn()));
}








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/logohome.png'), // Logo here
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Workspace",
              style: TextStyle(color: Colors.black45, fontSize: 14),
            ),
            Text(
              "Coca Studio",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.keyboard_arrow_down, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Recent Projects",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: Color(0xfff0062FF),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  height: 260,
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Private . 3 days left",
                        style: GoogleFonts.urbanist(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 168, 182, 201),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Clinic Health\nApplication for\nPatient",
                        style: GoogleFonts.urbanist(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xfff5D5FEF),
                        borderRadius: BorderRadius.circular(8),
                      ),

                      height: 126,
                      width: 155,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Public . 1 days left",
                            style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 168, 180, 197),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Day22 Exploration :\nRedesign Landing P...",
                            style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xfff12C6FF),
                        borderRadius: BorderRadius.circular(8),
                      ),

                      height: 126,
                      width: 155,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Public . 1 days left",
                            style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 227, 230, 234),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Elfarma Branding",
                            style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Today Task",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            Container(
              height: 86,
              width: 335,
              decoration: BoxDecoration(border: Border.all()),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Image.asset('assets/Group 33136.png'),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Continue Iteration Booking Flow",
                          style: GoogleFonts.urbanist(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Image.asset('assets/ic-calendar.png'),
                            SizedBox(width: 5),
                            Text(
                              "18 May, 2022",
                              style: TextStyle(color: Colors.blueGrey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    Image.asset('assets/Icon Frame.png'),
                  ],
                ),
              ),
            ),

SizedBox(height: 30),

            Container(
              height: 86,
              width: 335,
              decoration: BoxDecoration(border: Border.all()),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Image.asset('assets/Group 33136.png'),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Visual Messaging Module",
                          style: GoogleFonts.urbanist(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Image.asset('assets/ic-calendar.png'),
                            SizedBox(width: 5),
                            Text(
                              "18 May, 2022",
                              style: TextStyle(color: Colors.blueGrey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),



          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Color(0xffFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.grid_view),
              color: Color(0xfff7E8CA0),
              onPressed: () {logout();},
            ),
            const SizedBox(width: 20),
            IconButton(
              icon: const Icon(Icons.app_registration_sharp),
              color: Color(0xfff7E8CA0),
              onPressed: () {},
            ),
            const SizedBox(width: 55),
            IconButton(
              icon: const Icon(Icons.message),
              color: Color(0xfff7E8CA0),
              onPressed: () {},
            ),
            const SizedBox(width: 28),
            IconButton(
              icon: const Icon(Icons.person),
              color: Color(0xfff7E8CA0),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
        onPressed: () {},
        child: Image.asset('assets/Dashboard.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
