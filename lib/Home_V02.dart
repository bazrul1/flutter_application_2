import 'package:flutter/material.dart';
import 'package:flutter_application_2/Home_V03.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeV02 extends StatefulWidget {
  const HomeV02({Key? key}) : super(key: key);

  @override
  _HomeV02State createState() => _HomeV02State();
}

class _HomeV02State extends State<HomeV02> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Welcome back",
              style: TextStyle(color: Colors.black45, fontSize: 14),
            ),
            Text(
              "Jovanca!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 15),
          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(
              "assets/838c4becf08827a501d5b081b846c6ec8926618e.png",
            ),
          ),
          SizedBox(width: 16),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                height: 176,
                width: 335,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF6E8FFB), Color(0xFFFF7D7D)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Text(
                        "Workspace",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 225, 217, 217),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 113,
                        width: 319,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 16,
                                    child: Image.asset(
                                      'assets/3361dc54d395dd4fbb76a4f3602f5d5dc58b5dbf.png',
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "Sans Design",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                            SizedBox(height: 6),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 18,
                                      backgroundImage: AssetImage(
                                        'assets/5b929fbec6ab1a2a8bfa5244b6a6e56431b565a7.png',
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    CircleAvatar(
                                      radius: 18,
                                      backgroundImage: AssetImage(
                                        'assets/6fef888bc001bead1a0f50a743d0287ec44563bf.png',
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    CircleAvatar(
                                      radius: 18,
                                      backgroundImage: AssetImage(
                                        'assets/838c4becf08827a501d5b081b846c6ec8926618e.png',
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    CircleAvatar(
                                      radius: 18,
                                      backgroundImage: AssetImage(
                                        'assets/af80c648e5204e7c665b50c448dcec76883f6f61.png',
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    CircleAvatar(
                                      radius: 18,
                                      backgroundImage: AssetImage(
                                        'assets/bd9a0c85aa2440c65257675813c5d849a8e9f8d8 (1).png',
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    CircleAvatar(
                                      radius: 18,
                                      backgroundImage: AssetImage(
                                        'assets/LOGO.png',
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Colors.grey.shade300,
                                      child: Text("+2"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

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
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 166,
                      width: 266,
                      decoration: BoxDecoration(
                         color: const Color.fromARGB(255, 230, 240, 245),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Clinic Health Application Pa...",
                              style: GoogleFonts.urbanist(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Private . ",
                                  style: GoogleFonts.urbanist(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xfff7E8CA0),
                                    ),
                                  ),
                                ),
                                Text(
                                  "3 days left",
                                  style: GoogleFonts.urbanist(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xfffF05A5A),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 40),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                    'assets/af80c648e5204e7c665b50c448dcec76883f6f61.png',
                                  ),
                                ),

                                CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                    'assets/838c4becf08827a501d5b081b846c6ec8926618e.png',
                                  ),
                                ),

                                CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                    'assets/5b929fbec6ab1a2a8bfa5244b6a6e56431b565a7.png',
                                  ),
                                ),

                                SizedBox(
                                  width: 50,
                                ), // space between avatars and progress
                                // Progress text
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "78%",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    Text(
                                      "Progress",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),

                                // Circular progress
                                SizedBox(
                                  height: 32,
                                  width: 32,
                                  child: CircularProgressIndicator(
                                    value: 0.78,
                                    strokeWidth: 4,
                                    backgroundColor: Colors.grey.shade300,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.green,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Container(
                      height: 166,
                      width: 266,
                      decoration: BoxDecoration(
                         color: const Color.fromARGB(255, 230, 240, 245),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The Health Application Pa...",
                              style: GoogleFonts.urbanist(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Private . ",
                                  style: GoogleFonts.urbanist(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xfff7E8CA0),
                                    ),
                                  ),
                                ),
                                Text(
                                  "3 days left",
                                  style: GoogleFonts.urbanist(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xfffF05A5A),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 40),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                    'assets/af80c648e5204e7c665b50c448dcec76883f6f61.png',
                                  ),
                                ),

                                CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                    'assets/838c4becf08827a501d5b081b846c6ec8926618e.png',
                                  ),
                                ),

                                CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                    'assets/5b929fbec6ab1a2a8bfa5244b6a6e56431b565a7.png',
                                  ),
                                ),

                                SizedBox(
                                  width: 50,
                                ), // space between avatars and progress
                                // Progress text
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "78%",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    Text(
                                      "Progress",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),

                                // Circular progress
                                SizedBox(
                                  height: 32,
                                  width: 32,
                                  child: CircularProgressIndicator(
                                    value: 0.78,
                                    strokeWidth: 4,
                                    backgroundColor: Colors.grey.shade300,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.green,
                                    ),
                                  ),
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
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 232, 220, 220),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
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
                      SizedBox(width: 20),
                      Image.asset('assets/Icon Frame.png'),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),

              Container(
                height: 86,
                width: 335,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 232, 220, 220),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
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
      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
         color: const Color.fromARGB(255, 230, 240, 245),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.grid_view),
              color: Color(0xfff7E8CA0),
              onPressed: () {
              },
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
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => HomeV03()));
        },
        child: Image.asset('assets/Dashboard.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
