import 'package:flutter/material.dart';
import 'package:tse/Screens/info_screen.dart';
import 'package:tse/Screens/loginpage.dart';
import 'package:tse/Screens/myprofile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  'TSE School',
                  style:
                      TextStyle(fontSize: 25, color: Colors.lightGreenAccent),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () { Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SchoolInfoPage()));},
                icon: CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(
                      'images/person.png'), // Replace with the actual image
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
                Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                        // Set background color
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.infinity,
                    height: 80,
                    child: Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom:20),
                            child:Container(
                              width: 80,
                              height: 80,
                              // Adjust margin for red dot
                              child: Image(image: AssetImage("images/person.png",
                              )),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Welcome XYZ, ',
                                style: TextStyle(
                                  color: Colors.black54,
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Expanded(
                        child: Card(
                      elevation: 5,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.shade400,
                              borderRadius: BorderRadius.circular(
                                  20), // Adjust the border radius to match the Card's border radius
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
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 15,
                                        height: 15,
                                        margin: EdgeInsets.only(
                                            top: 5,
                                            right:
                                                5), // Adjust margin for red dot
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Notice Board',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Every notice will be diplay here',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )), // Add a small space between the cards
                    Expanded(
                      child: Card(
                        elevation: 5,
                        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.lightBlue.shade400,
                                borderRadius: BorderRadius.circular(
                                    20), // Adjust the border radius to match the Card's border radius
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
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18.0),
                                      child: Text(
                                        'HomeWorks',
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Text(
                                      'Every HomeWorks will be diplay here',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ],
                ),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: double
                        .infinity, // This makes the container take the full available width
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                           // Set background color
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.book,
                            color: Colors.white,
                            size: 100,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Library Book Issue List',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white,),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'No. of issues = xx',
                              style: TextStyle(fontSize: 15,color: Colors.white,),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Due date = DD/MM/YY',
                              style: TextStyle(fontSize: 15,color: Colors.white,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey
                              .withOpacity(0.1), // Set background color
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: double
                            .infinity, // This makes the container take the full available width
                        height: 100,
                        child: Center(
                          child: Text(
                            'Subject Progress',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey
                              .withOpacity(0.1), // Set background color
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: double
                            .infinity, // This makes the container take the full available width
                        height: 100,
                        child: Center(
                          child: Text(
                            'Upcoming Classes',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey
                              .withOpacity(0.1), // Set background color
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: double
                            .infinity, // This makes the container take the full available width
                        height: 100,
                        child: Center(
                          child: Text(
                            'Teachers List',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey
                              .withOpacity(0.1), // Set background color
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: double
                            .infinity, // This makes the container take the full available width
                        height: 100,
                        child: Center(
                          child: Text(
                            'Visitors List',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

