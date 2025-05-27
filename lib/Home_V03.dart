import 'package:flutter/material.dart';
import 'package:flutter_application_2/sing_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeV03 extends StatefulWidget {
  const HomeV03({Key? key}) : super(key: key);

  @override
  _HomeV03State createState() => _HomeV03State();
}

class _HomeV03State extends State<HomeV03> {
  logout() async {
    SharedPreferences BS = await SharedPreferences.getInstance();
    BS.setString("login", "false");
    Navigator.push(context, MaterialPageRoute(builder: (_) => SingIn()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child:Image.asset('assets/3361dc54d395dd4fbb76a4f3602f5d5dc58b5dbf.png', fit: BoxFit.contain,)),
             Column(
              
              
               children: [SizedBox(height: 200,),
                
                 ListTile(title:   ElevatedButton(
                          onPressed: () {logout();},
                          child: Text("Log out",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w800),),
                        )),
               ],
             ),
              
          ],
          
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(onTap: (){Navigator.pop(context );},
            child: Image.asset(
               "assets/LOGO.png"
              ,
            ),
          ), 
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


actions: [Icon(Icons.search, color: Colors.black),
SizedBox(width: 15),
          Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer(); 
                },
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(
                    'assets/3361dc54d395dd4fbb76a4f3602f5d5dc58b5dbf.png',
                  ),
                ),
              ),
            ),
          )
        ],

      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10),

              Row(
                children: [
                  Container(
                    height: 172,
                    width: 162,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 240, 245),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Color(0xfffFFD88D),
                            child: Icon(
                              Icons.check_circle_outline,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              size: 20,
                            ),
                          ),
                          SizedBox(height: 40),
                          Text(
                            "140",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Projects Complete",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 162,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 230, 240, 245),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "12",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "Inquiry",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(width: 60),
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Color(0xfffB1E5FC),
                                    child: Icon(
                                      Icons.coffee_outlined,
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      Container(
                        height: 80,
                        width: 162,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 230, 240, 245),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "28",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "On Going",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(width: 50),
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Color(0xfffCABDFF),
                                    child: Icon(
                                      Icons.compass_calibration_outlined,
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      size: 20,
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
                ],
              ),

              SizedBox(height: 15),
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
                ;
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
          showModalBottomSheet(
            context: context,
            isScrollControlled: true, // allows custom height
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
            builder:
                (context) => DraggableScrollableSheet(
                  expand: false,
                  initialChildSize: 0.5, // half screen
                  minChildSize: 0.3,
                  maxChildSize: 0.9,
                  builder: (context, scrollController) {
                    return Container(
                      padding: EdgeInsets.all(16),
                      child: ListView(
                        controller: scrollController,
                        children: [
                          SizedBox(height: 10),
                          Column(
                            children: [
                              Container(width: 56, child: Divider(height: 20)),
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text(
                                "Choose Workspace",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "You have 2 workspace in Coca",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfff808D9E),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                          Container(
                            height: 48,
                            width: 335,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 211, 226, 234),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 100),
                                Icon(Icons.add),
                                Text("Add Workspace"),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          Container(
                            height: 70,
                            width: 335,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 232, 220, 220),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Image.asset('assets/Group 29.png'),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sans Brothers",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),

                                      Row(
                                        children: [
                                          Text(
                                            "12 Member",
                                            style: GoogleFonts.urbanist(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.blueGrey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 130),
                                  Icon(
                                    Icons.check,
                                    color: const Color.fromARGB(
                                      221,
                                      0,
                                      111,
                                      247,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 20),
                          Container(
                            height: 70,
                            width: 335,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 232, 220, 220),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Image.asset('assets/Logo (1).png'),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Suteki Tech",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),

                                      Row(
                                        children: [
                                          Text(
                                            "56 Member",
                                            style: GoogleFonts.urbanist(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.blueGrey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 130),
                                  Icon(
                                    Icons.check,
                                    color: const Color.fromARGB(
                                      221,
                                      0,
                                      111,
                                      247,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
          );
        },
        child: Image.asset('assets/Dashboard.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
