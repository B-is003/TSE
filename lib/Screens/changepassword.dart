import 'package:flutter/material.dart';
import 'package:tse/Screens/myprofile.dart';
import 'package:tse/api/passchangeapi.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final ApiService apiService = ApiService();
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  bool _showOldPassword = false;
  bool _showNewPassword = false;
  bool _showConfirmPassword = false;
  bool passwordsMatch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Password',
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: oldPasswordController,
              obscureText: !_showOldPassword,
              decoration: InputDecoration(
                labelText: 'Old Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _showOldPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _showOldPassword = !_showOldPassword;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: newPasswordController,
              obscureText: !_showNewPassword,
              decoration: InputDecoration(
                labelText: 'New Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _showNewPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _showNewPassword = !_showNewPassword;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: confirmPasswordController,
              obscureText: !_showConfirmPassword,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _showConfirmPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _showConfirmPassword = !_showConfirmPassword;
                    });
                  },
                ),
              ),
            ),
            if (!passwordsMatch)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Passwords do not match.',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5.0,
                primary: Colors.blueGrey,
              ),
              onPressed: () async {
                if (newPasswordController.text == confirmPasswordController.text) {
                  try {
                    await apiService.changePassword(
                        oldPasswordController.text,
                        newPasswordController.text,
                        'your_token_here');
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Password changed successfully')));

                    // Navigate to the home page after successful password change
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyProfileScreen()),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Failed to change password')));
                  }
                } else {
                  setState(() {
                    passwordsMatch = false;
                  });
                }
              },
              child: Text('Change Password'),
            ),
          ],
        ),
      ),
    );
  }
}
