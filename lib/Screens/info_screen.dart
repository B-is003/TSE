import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SchoolInfoScreen extends StatefulWidget {
  @override
  _SchoolInfoScreenState createState() => _SchoolInfoScreenState();
}

class _SchoolInfoScreenState extends State<SchoolInfoScreen> {
  String schoolName = "";
  String address = "";
  String phone = "";
  String email = "";
  String adminLogoUrl = "";

  @override
  void initState() {
    super.initState();
    fetchSchoolInfo();
  }

  Future<void> fetchSchoolInfo() async {
    var headers = {
      'Cookie': 'ci_session=cm4ifffavfeddcunl0kolt1rtcmrihu0',
      //'Content-Type': 'application/json',
    };
    var request = http.Request('POST', Uri.parse('https://school.h24x7.in/api/parent/info'));
    request.body = json.encode({
      "school_name": "Concept Senior Secondary School",
      "address": "MD ROAD, NORTH HAIBARGAON",
      "phone": "9401876084",
      "email": "principal.conceptjrcollege@gmail.com",
      "admin_small_logo": "https://school.h24x7.in/uploads/school_content/admin_small_logo/1694244772-35964937764fc1fa4bea43!tse_logo.png",
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 401) {
      String responseBody = await response.stream.bytesToString();
      Map<String, dynamic> data = json.decode(responseBody);
      setState(() {
        schoolName = data['school_name'];
        address = data['address'];
        phone = data['phone'];
        email = data['email'];
        adminLogoUrl = data['admin_small_logo'];
      });
    } else {
      print(response.reasonPhrase);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('School Information'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              adminLogoUrl,
              width: 100, // Adjust the width as needed
              height: 100, // Adjust the height as needed
            ),
            SizedBox(height: 16.0),
            Text(
              'School Name: $schoolName',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('Address: $address', style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 8.0),
            Text('Phone: $phone', style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 8.0),
            Text('Email: $email', style: TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}
