import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image from POST API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageFromApiScreen(),
    );
  }
}

class ImageFromApiScreen extends StatefulWidget {
  @override
  _ImageFromApiScreenState createState() => _ImageFromApiScreenState();
}

class _ImageFromApiScreenState extends State<ImageFromApiScreen> {
  final String apiUrl = 'https://school.h24x7.in/api/parent/info'; // Replace with your API URL
  late Future<Image> _futureImage;

  @override
  void initState() {
    super.initState();
    _futureImage = fetchImageFromApi();
  }

  Future<Image> fetchImageFromApi() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final imageBytes = response.bodyBytes;
      final image = Image.memory(imageBytes); // Create an Image widget from the bytes
      return image;
    } else {
      throw Exception('Failed to load image from API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image from API'),
      ),
      body: Center(
        child: FutureBuilder<Image>(
          future: _futureImage,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // Show a loading indicator
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return snapshot.data!; // Display the fetched image
            } else {
              return Text('No data available');
            }
          },
        ),
      ),
    );
  }
}
