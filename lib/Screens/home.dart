import 'package:flutter/material.dart';
import 'package:tse/Screens/info_screen.dart';
import 'package:tse/Screens/loginpage.dart';
import 'package:tse/Screens/myprofile.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Adjust the height as needed
        child: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.12, // Responsive toolbar height
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF475FFF), // Start color (#475FFF)
                  Color(0xFF0CCBFF), // End color (#0CCBFF)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.038), // Responsive height
                    Padding(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.095, // Responsive padding
                      ),
                      child: Text(
                        'Welcome back',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.027, // Responsive font size
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.13, // Responsive padding
                      ),
                      child: Text(
                        'Deepika Padukone',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.048, // Responsive font size
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.grey.shade50,
          actions: [
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.03, // Responsive padding
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  elevation: 0,
                  primary: Colors.transparent,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.12, // Responsive width
                  height: MediaQuery.of(context).size.width * 0.12, // Responsive height
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage('images/icons/tselogo2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.person_rounded,
                    size: 50,
                    color: Colors.white,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Welcome Parent',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('My Profile',style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfileScreen()));
                // Handle My Profile action
              },
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.blueGrey,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
                // Handle My Profile action
              },
            )

            // ListTile(
            //   title: Text('Class Time Table'),
            //   onTap: () {
            //     // Handle Class Time Table action
            //   },
            // ),
            // ListTile(
            //   title: Text('Homework'),
            //   onTap: () {
            //     // Handle Homework action
            //   },
            // ),
            // ListTile(
            //   title: Text('Attendance'),
            //   onTap: () {
            //     // Handle Attendance action
            //   },
            // ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              print('Rectangular Card clicked');
            },
            child: Column(
              children: [
                SizedBox(height: 2),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFe79d2b), // Start color (#475FFF)
                              Color(0xFFe06317), // End color (#0CCBFF)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(
                              25), // Adjust the border radius to match the Card's border radius
                        ),
                        width: double.infinity,
                        height: 180,
                        child: Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.004, // Adjust the top padding as needed
                              left: MediaQuery.of(context).size.width * 0.01, // Adjust the left padding as needed
                            ), // Adjust the padding for text
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LayoutBuilder(
                                builder: (context, constraints) {
                                  double iconSize = constraints.maxWidth * 0.1; // Adjust the icon size as needed
                                  double fontSize = constraints.maxWidth * 0.04; // Adjust the font size as needed

                                  return Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 14.0),
                                        child: Image.asset(
                                          'images/icons/Notice_Board.png',
                                          width: 25,
                                          height: 25,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          'Notice Board',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: fontSize,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              )
                              ,],
                          ),
                        ),
                      ),
                      Positioned(
                          left:25,
                          top: 45,
                          child: Container(height: 100, width: 1,color: Colors.grey.shade400,)),
                      Positioned(
                          top: 106,
                          left: 22,
                          child: Container(height: 18,width: 8,decoration:BoxDecoration(color: Colors.white ,borderRadius: BorderRadius.circular(20)))),
                      Positioned(
                        left: MediaQuery.of(context).size.width * 0.090, // Adjust the left position as needed
                        top: MediaQuery.of(context).size.height * 0.055, // Adjust the top position as needed
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.77,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Exam Schedules: Timetables for midterm and final exams",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.003),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.003),
                              Text(
                                "School Policies: Notices regarding school rules.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.003),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.003),
                              Text(
                                "Lost and Found: notices about lost and found items.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.003),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.003),
                              Text(
                                "Notices related to PTA meetings.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.003),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.003),
                              Text(
                                "Information about upcoming events",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.17, // Adjust the top position as needed
                        left: MediaQuery.of(context).size.width * 0.38, // Adjust the left position as needed
                        child: Row(
                          children: [
                            Text(
                              "more",
                              style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold), // Responsive font size
                            ),
                            Icon(
                              Icons.arrow_drop_down_rounded,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width * 0.075, // Responsive icon size
                            ),
                          ],
                        ),
                      )

                    ],

                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Card(
                        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: Colors.grey.shade300, // Replace with your desired border color
                                  width: 1.0, // Adjust the border width as needed
                                ),
                              ),
                              width: MediaQuery.of(context).size.width * 0.27, // Responsive width
                              height: MediaQuery.of(context).size.width * 0.27, // Responsive height
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'images/icons/Subject_Progress.png',
                                      width: 35, // Responsive width
                                      height: 35, // Responsive height
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    'Subject',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Progress',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Add a small space between the cards
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.grey.shade300, // Replace with your desired border color
                                width: 1.0, // Adjust the border width as needed
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.27, // Responsive width
                            height: MediaQuery.of(context).size.width * 0.27, // Responsive height
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'images/icons/Upcoming_Class.png',
                                    width: 35, // Responsive width
                                    height: 35, // Responsive height
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Upcoming',
                                  style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Class',
                                  style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.grey.shade300, // Replace with your desired border color
                                width: 1.0, // Adjust the border width as needed
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.27, // Responsive width
                            height: MediaQuery.of(context).size.width * 0.27, // Responsive height
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Image.asset(
                                    'images/icons/Homework.png',
                                    width: 40, // Responsive width
                                    height: 40, // Responsive height
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Homework',
                                  style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Card(
                        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: Colors.grey.shade300, // Replace with your desired border color
                                  width: 1.0, // Adjust the border width as needed
                                ),
                              ),
                              width: MediaQuery.of(context).size.width * 0.27, // Responsive width
                              height: MediaQuery.of(context).size.width * 0.27, // Responsive height
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'images/icons/Teacher_List.png',
                                      width: 40, // Responsive width
                                      height:40, // Responsive height
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    'Teacher',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'List',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Add a small space between the cards
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.grey.shade300, // Replace with your desired border color
                                width: 1.0, // Adjust the border width as needed
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.27, // Responsive width
                            height: MediaQuery.of(context).size.width * 0.27, // Responsive height
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'images/icons/Tourguide.png',
                                    width: 40, // Responsive width
                                    height: 40, // Responsive height
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Visitor',
                                  style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'List',
                                  style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.27, // Responsive width
                        height: MediaQuery.of(context).size.width * 0.27, // Responsive height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.27, // Responsive width
                              height: MediaQuery.of(context).size.width * 0.1, // Responsive height
                              decoration: BoxDecoration(
                                color: Color(0xFF4169FF),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0,top: 3,right: 3,bottom: 3),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.1, // Responsive width
                                      height: MediaQuery.of(context).size.width * 0.1, // Responsive height
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Image.asset(
                                          'images/icons/Hostel.png',
                                          width: MediaQuery.of(context).size.width * 0.05, // Responsive width
                                          height: MediaQuery.of(context).size.width * 0.05, // Responsive height
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Hostel",
                                    style: TextStyle(color: Colors.white,fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10), // Add spacing between the two circles
                            Container(
                              width: MediaQuery.of(context).size.width * 0.27, // Responsive width
                              height: MediaQuery.of(context).size.width * 0.1, // Responsive height
                              decoration: BoxDecoration(
                                color: Color(0xFFe06317),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0,top: 3,right: 3,bottom: 3),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.1, // Responsive width
                                      height: MediaQuery.of(context).size.width * 0.1, // Responsive height
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset(
                                          'images/icons/Transport.png',
                                          width: MediaQuery.of(context).size.width * 0.05, // Responsive width
                                          height: MediaQuery.of(context).size.width * 0.05, // Responsive height
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Transport",
                                    style: TextStyle(color: Colors.white,fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 5,),
                Card(
                  elevation: 4,
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white70
                        ),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width * 0.50, // Responsive height
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0,top: 18), // Adjust the padding for text
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images/icons/Book.png',
                                    width: MediaQuery.of(context).size.width * 0.06, // Responsive icon size
                                    height: MediaQuery.of(context).size.width * 0.06, // Responsive icon size
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Library Book Issue List',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width * 0.05, // Responsive font size
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: MediaQuery.of(context).size.width * 0.15, // Responsive position
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.27, // Responsive height
                          width: 1,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.width * 0.31, // Responsive position
                        left: 26,
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.04, // Responsive height
                          width: MediaQuery.of(context).size.width * 0.02, // Responsive width
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width * 0.13, // Responsive position
                        top: MediaQuery.of(context).size.height * 0.085, // Responsive position
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.25, // Responsive height
                          width: MediaQuery.of(context).size.width * 0.65, // Responsive width
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Exam Schedules",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.005), // Responsive spacing
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.005), // Responsive spacing
                              Text(
                                "School Policies rules.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.005), // Responsive spacing
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.005), // Responsive spacing
                              Text(
                                "Lost and Found",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.005), // Responsive spacing
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.005), // Responsive spacing
                              Text(
                                "PTA meetings.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.005), // Responsive spacing
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.005), // Responsive spacing
                              Text(
                                "Upcoming events",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: MediaQuery.of(context).size.width * 0.03, // Responsive font size
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                ,

                Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity, // Adjust the size as needed
                        height: MediaQuery.of(context).size.width * 0.2, // Responsive height
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF475FFF), // Start color (#475FFF)
                              Color(0xFF0CCBFF), // End color (#0CCBFF)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.15, // Responsive width
                                height: MediaQuery.of(context).size.width * 0.15, // Responsive height
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Text(
                              "Rohit Sharma",
                              style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.04), // Responsive font size
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: MediaQuery.of(context).size.width * 0.1, // Responsive size
                              color: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1), // Adjust the spacing
                              child: Text(
                                "Class: IX",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width * 0.04, // Responsive font size
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ),


                SizedBox(height: 20,),

              ],
            ),
          ),
        ],
      ),
    );
  }
}