import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SchoolInfoPage extends StatefulWidget {
  @override
  _SchoolInfoPageState createState() => _SchoolInfoPageState();
}

class _SchoolInfoPageState extends State<SchoolInfoPage> {
  Future<String?> getImageUrl() async {
    // Simulate fetching the image URL from an API or source.
    await Future.delayed(Duration(seconds: 2));
    return "https://school.h24x7.in/1693901130-135678882464f6e14a7e89a!favicon.png";
  }

  Future<void> fetchDataFromAPI() async {
    var headers = {
      'Cookie': 'ci_session=cm4ifffavfeddcunl0kolt1rtcmrihu0; ci_session=6i7fur5old8ftalkq8ucvr67h1h979gd',
      'Content-Type': 'application/json'
    };

    var request = http.Request('POST', Uri.parse('https://school.h24x7.in/api/parent/info'));
    request.body = json.encode({
      "school_name": "TechSavvy Senior Secondary School",
      "address": "MD ROAD, NORTH HAIBARGAON",
      "phone": "9401876084",
      "email": "principal.conceptjrcollege@gmail.com",
      "admin_small_logo":"https://school.h24x7.in/1693901130-135678882464f6e14a7e89a!favicon.png"
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String responseBody = await response.stream.bytesToString();
      print(responseBody);
    } else {
      print(response.reasonPhrase);
    }
  }

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('TSE School'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            margin: EdgeInsets.all(16.0),
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: FutureBuilder<String?>(
              future: getImageUrl(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // While the image URL is being fetched, show a loading indicator.
                  return CircularProgressIndicator();
                } else if (snapshot.hasError || snapshot.data == null) {
                  // If there's an error or no image URL is available, show an error message.
                  return Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Failed to load image',
                      style: TextStyle(color: Colors.red),
                    ),
                  );
                } else {
                  // If the image URL is available, display the image.
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(0.0),
                        color: Colors.white,
                         child:const Image(
                           image: NetworkImage('https://school.h24x7.in/uploads/school_content/admin_logo/1694244789-109936653064fc1fb505b9a!tse_logo.png'),
                         )
                        // Image.network(
                        //   snapshot.data!,
                        //   width: 150.0,
                        //   height: 150.0,
                        //   fit: BoxFit.contain,
                        // ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "TechSavvy Senior Secondary School",
                              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Address: MD ROAD, NORTH HAIBARGAON",
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Phone: 9401876084",
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Email: principal.conceptjrcollege@gmail.com",
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
