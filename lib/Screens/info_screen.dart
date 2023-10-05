import 'package:flutter/material.dart';



class InfoPage extends StatelessWidget {
  final String schoolName = "Concept Senior Secondary School";
  final String address = "MD ROAD, NORTH HAIBARGAON";
  final String phone = "9401876084";
  final String email = "principal.conceptjrcollege@gmail.com";
  final String adminLogo =
      "https://school.h24x7.in/uploads/school_content/admin_small_logo/1694244772-35964937764fc1fa4bea43!tse_logo.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // Adjust the height as needed
        child: AppBar(
          toolbarHeight: 80.0, // Same as preferredSize height
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
          ),
          title: Text("Information"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(adminLogo, height: 100.0, width: 300.0),
            SizedBox(height: 2.0),
            Text(
              schoolName,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              address,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "Phone: $phone",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "Email: $email",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
