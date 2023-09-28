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
          toolbarHeight: 120.0, // Same as preferredSize height
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
                    SizedBox(height: 55,),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Text(
                        'Welcome back',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Text(
                        'Deepika Padukone',
                        style: TextStyle(
                          fontSize: 25,
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
              padding: const EdgeInsets.only(right: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SchoolInfoScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  elevation: 0,
                  primary: Colors.transparent,
                ),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage('images/tselogo.png'),
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
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                      colors: [
                      Color(0xFFD11C1A), // Start color (#475FFF)
                  Color(0xFFFC1E01), // End color (#0CCBFF)
                  ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                ),
                          borderRadius: BorderRadius.circular(
                              35), // Adjust the border radius to match the Card's border radius
                        ),
                        width: double.infinity,
                        height: 220,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10,
                              left: 10), // Adjust the padding for text
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Image.asset(
                                      'images/icons/Notice_Board.png',
                                      width: 30,
                                      height: 30,                                             ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Notice Board',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Card(
                        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Colors.grey.shade300, // Replace with your desired border color
                                  width: 1.0,
                                  // Adjust the border width as needed
                                ),
                              ),
                              width: 130,
                              height: 135,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 10), // Adjust the padding for text
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                    'images/icons/Subject_Progress.png',
                                    width: 55,
                                    height: 55,),
                                  ),
                                    SizedBox(height: 2,),
                                    Text(
                                      'Subject',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Progress',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), // Add a small space between the cards
                      Card(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.grey.shade300, // Replace with your desired border color
                    width: 1.0,
                    // Adjust the border width as needed
                  ),
                ),
                width: 130,
                height: 135,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10,
                      left: 10), // Adjust the padding for text
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'images/icons/Upcoming_Class.png',
                          width: 55,
                          height: 55,),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        'Upcoming',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Class',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.grey.shade300, // Replace with your desired border color
                                width: 1.0,
                                // Adjust the border width as needed
                              ),
                            ),
                            width: 130,
                            height: 135,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 10), // Adjust the padding for text
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'images/icons/Homework.png',
                                      width: 55,
                                      height: 55,),
                                  ),
                                  SizedBox(height: 2,),

                                  Text(
                                    'Homework',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Colors.grey.shade300, // Replace with your desired border color
                                  width: 1.0,
                                  // Adjust the border width as needed
                                ),
                              ),
                              width: 130,
                              height: 135,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 10), // Adjust the padding for text
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'images/icons/Teacher_List.png',
                                        width: 55,
                                        height: 55,),
                                    ),
                                    SizedBox(height: 2,),
                                    Text(
                                      'Teacher',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'List',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), // Add a small space between the cards
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.grey.shade300, // Replace with your desired border color
                                width: 1.0,
                                // Adjust the border width as needed
                              ),
                            ),
                            width: 130,
                            height: 135,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 10), // Adjust the padding for text
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'images/icons/Tourguide.png',
                                      width: 55,
                                      height: 55,),
                                  ),
                                  SizedBox(height: 2,),
                                  Text(
                                    'Visitor',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'List',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(elevation: 0,
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Container(
                        width: 130,
                        height: 135,
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(30),

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 130, // Adjust the size as needed
                              height: 60, // Adjust the size as needed
                              decoration: BoxDecoration(
                                color: Color(0xFF4169FF),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 50, // Adjust the size as needed
                                      height: 50, // Adjust the size as needed
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child:  Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Image.asset(

                                          'images/icons/Hostel.png',
                                          height: 1,
                                          width: 1,),
                                      ),
                                    ),
                                  ),
                                  Text("Hostel",style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),

                            SizedBox(height: 10), // Add spacing between the two circles
                            Container(
                              width: 130, // Adjust the size as needed
                              height: 60, // Adjust the size as needed
                              decoration: BoxDecoration(
                                color: Color(0xFFFF0F0F),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 50, // Adjust the size as needed
                                      height: 50, // Adjust the size as needed
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                          shape: BoxShape.circle,
                                      ),
                                      child:  Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Image.asset(

                                          'images/icons/Transport.png',
                                          height: 1,
                                        width: 1,),
                                      ),
                                    ),
                                  ),
                                  Text("Transport",style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )



                  ],
                ),
                SizedBox(height: 5,),
                Card(
                  elevation: 3,
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),

                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              35), // Adjust the border radius to match the Card's border radius
                        ),
                        width: double.infinity,
                        height: 250,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10,
                              left: 10), // Adjust the padding for text
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Image.asset(
                                      'images/icons/Book.png',
                                      width: 40,
                                      height: 40,                                             ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Library Book Issue List',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Colors.black,
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

                Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity, // Adjust the size as needed
                        height: 100, // Adjust the size as needed
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF475FFF), // Start color (#475FFF)
                              Color(0xFF0CCBFF), // End color (#0CCBFF)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: 50, // Adjust the size as needed
                                height: 50, // Adjust the size as needed
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),

                              ),
                            ),
                            Text("Rohit Sharma",style: TextStyle(color: Colors.white,fontSize: 22),),
                            Icon(Icons.arrow_drop_down,size: 45,color: Colors.white,),
                            Padding(
                              padding: const EdgeInsets.only(left: 58.0),
                              child: Text("Class : IX",style: TextStyle(color: Colors.white,fontSize: 22),),
                            ),

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

