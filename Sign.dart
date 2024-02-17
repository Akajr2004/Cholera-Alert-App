import 'package:flutter/material.dart';
import 'package:app/Screens/Home_screen.dart';
//import 'package:app/Screens/about_screen.dart';

void main() {
  runApp(MaterialApp(home: LoginScreen()));
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'Assets/Pictures/The_Doctor-removebg-preview.png',
              width: 200.0, // Adjust the width as needed
            ),
            SizedBox(height: 20.0),
            Text(
              'Welcome To The Cholera Alert App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue[700],
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: () {
                // Redirect to HomeScreen for now
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeScreen())));
              },
              // icon: Image.asset(
              //   'assets/google_icon.png', // Replace with the Google icon asset path
              //   width: 30.0, // Adjust the size of the Google icon
              // ),
              icon: Icon(
                Icons.person_2_outlined, // Use the Google icon here
                color: Colors.white,
              ),
              label: Text(
                'User',
                style: TextStyle(
                  fontSize: 20.0, // Adjust the button text size
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .blue[700], // Set the button's background color to green
                padding: EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 25.0), // Adjust button padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30.0), // Add rounded corners
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: () {
                // Handle Email login logic here
                // Redirect to HomeScreen for now
                //Navigator.of(context).pushReplacementNamed('/home');
              },
              icon: Icon(
                Icons.admin_panel_settings_outlined,
                size: 30.0, // Adjust the size of the email icon
              ),
              label: Text(
                'Admin',
                style: TextStyle(
                  fontSize: 20.0, // Adjust the button text size
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .blue[700], // Set the button's background color to green
                padding: EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 25.0), // Adjust button padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30.0), // Add rounded corners
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
