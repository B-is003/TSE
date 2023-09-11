import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String apiUrl = 'https://school.h24x7.in/api/parent/changepass';

  Future<void> changePassword(String oldPassword, String newPassword, String token) async {
    final Map<String, String> headers = {
      'Authorization': 'Bearer $token',
      'Cookie': 'ci_session=a3gcrg5p9l1i34q7872r9453kdcih7qe',
      'Content-Type': 'application/json', // Specify content type as JSON
    };

    final Map<String, String> requestBody = {
      'old_password': oldPassword,
      'new_password': newPassword,
    };

    final http.Response response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body: json.encode(requestBody), // Convert the request body to JSON
    );

    final Map<String, dynamic> responseData = json.decode(response.body);

    if (response.statusCode == 200 && responseData['status'] == true) {
      print('Password changed successfully: ${responseData['message']}');
    } else {
      print('Failed to change password: ${responseData['message']}');
    }
  }
}
