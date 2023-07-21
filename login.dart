import 'package:flutter/material.dart';
import 'package:login/sign_in.dart';

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make app bar transparent
        elevation: 0, // Remove the app bar elevation
        actions: [
          // Skip button
          Container(
            margin: EdgeInsets.only(right: 10,top: 10),
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6), // Adjust the padding here
            decoration: BoxDecoration(
              color: Colors.brown[100], // Brown color for the rectangle
              borderRadius: BorderRadius.circular(20), // Curved corners
            ),
            child: TextButton(
              onPressed: () {
                // Handle skip logic here
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Colors.black, // Text color for the "Skip" button
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 100),

                // 7krave logo
                Container(
                  padding: EdgeInsets.all(30), // Padding around the logo
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[50], // Light yellow color for the circle
                    shape: BoxShape.circle, // Shape set to circle
                  ),
                  child: Image.asset(
                    'assets/register.jpg', // Replace with the path to your logo image
                    height: 130, // Set the desired height of the logo
                  ),
                ),

                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    // Handle continue with email logic here
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18), // Add padding here
                  ),
                  child: Text('Continue with Email'),
                ),

                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle continue with Apple logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18), // Add padding here
                  ),
                  icon: Image.asset(
                    'assets/apple_logo.png', // Replace with the path to your Apple logo image
                    height: 30, // Set the desired height of the logo
                  ),
                  label: Text('Continue with Apple'),
                ),

                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle continue with Google logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent[400],
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                  ),
                  icon: Image.asset(
                    'assets/google_logo.png', // Replace with the path to your Google logo image
                    height: 30, // Set the desired height of the logo
                  ),
                  label: Text('Continue with Google'),
                ),

                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle continue with Facebook logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue[900],
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                  ),
                  icon: Image.asset(
                    'assets/facebook_logo.png', // Replace with the path to your Facebook logo image
                    height: 30, // Set the desired height of the logo
                  ),
                  label: Text('Continue with Facebook'),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigate to the sign-up page here
                        // Example: Navigator.pushNamed(context, 'signup');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40), // Add space between the "Sign Up" row and "By clicking" text

                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      children: [
                        TextSpan(
                          text: 'By clicking "Continue with Email/Apple/Google/Facebook"\n above, you agree to 7krave\'s ',
                        ),
                        TextSpan(
                          text: 'Terms & Conditions ',
                          style: TextStyle(color: Colors.brown[400]),
                        ),
                        TextSpan(
                          text: 'and ',
                        ),
                        TextSpan(
                          text: 'Privacy\n Policy.',
                          style: TextStyle(color: Colors.brown[400]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
