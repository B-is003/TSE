import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'home.dart'; // Import your HomeScreen widget

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  bool _isLoading = false; // New variable to track loading state
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0CCBFF),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 16.0),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
              ),
              color:  Colors.grey.shade50,
              margin: EdgeInsets.all(20.0),
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 70, left: 30, right: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/tselogo.png'),
                      width: 200.0,
                      height: 50.0,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Login Page',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFe06317),
                      ),
                    ),
                    SizedBox(height: 25.0),
                    TextFormField(
                      controller: _usernameController,
                      style: TextStyle(color: Color(0xFFe06317)),
                      decoration: InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person, color: Colors.deepPurple),
                        labelStyle: TextStyle(color: Colors.purpleAccent),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: !_passwordVisible,
                      style: TextStyle(color: Color(0xFFe06317)),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock, color: Colors.deepPurple),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.purple,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        labelStyle: TextStyle(color: Colors.purpleAccent),
                      ),
                    ),
                    SizedBox(height: 24.0),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: ElevatedButton(
                          onPressed: _isLoading ? null : login, // Disable button while loading
                          child: _isLoading
                              ? CircularProgressIndicator() // Show loading indicator
                              : Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5.0,
                            primary: Color(0xFFe06317),
                          ),
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
    );
  }

  Future<void> login() async {
    if (_passwordController.text.isNotEmpty && _usernameController.text.isNotEmpty) {
      setState(() {
        _isLoading = true; // Start loading
      });

      await Future.delayed(Duration(seconds: 2)); // Simulate loading for 2 seconds

      var headers = {
        //'Content-Type': 'application/json',
        'Cookie': 'ci_session=5t1ngvpbq6dcvhm5v1i2ttr8mou99p40'
      };
      var request = http.Request('POST', Uri.parse('https://school.h24x7.in/api/parent/loginbymobile'));
      request.body = json.encode({
        "phone": _usernameController.text,
        "password": _passwordController.text,
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Successful")));
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid login credentials")));
        print(response.reasonPhrase);
      }

      setState(() {
        _isLoading = false; // Stop loading
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Blank field is not allowed")));
    }
  }
}
