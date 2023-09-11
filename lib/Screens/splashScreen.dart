import 'package:flutter/material.dart';
import 'package:tse/Screens/info_screen.dart';
import 'package:tse/Screens/loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay before navigating to the main screen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SchoolInfoPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey
          // gradient: LinearGradient(
          //   colors: [Colors.lightGreen, Colors.green.shade400],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
        ),
        child: Center(
          child: Container(height: 100,
            width: 100,
            child: Image(image: AssetImage("images/logo1.png",
            )),
          )
        ),
      ),

    );
  }
}

