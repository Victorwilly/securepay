import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secure_pay/presentation/create_account_screen/create_account_screen.dart';
import 'package:secure_pay/presentation/retreive_password_screen/retreive_password_screen.dart';
import 'package:secure_pay/presentation/homepage_screen/homepage.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    // Get screen dimensions for responsive design
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.08, // Responsive horizontal padding
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.1),
                Center(
                  child: Column(
                    children: [
                       SvgPicture.asset(
                        'assets/securepay_logo.png', // Replace with the actual logo asset path
                        height: screenHeight * 0.08, // Adjust based on design
                      ),
                     
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        'Login your account',
                        style: TextStyle(
                          fontSize: screenWidth * 0.06, // Responsive title font size
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account? ",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigate to create account screen
                                Navigator.push(
                 context,
            MaterialPageRoute(builder: (context) => const CreateAccountScreen()),
          );
                            },
                            child: Text(
                              "Create",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_right_alt, color: Colors.blue, size: screenWidth * 0.05),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Text(
                  "Email address/Phone number",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle login action
                        Navigator.push(
                 context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      // Handle forgot password action
                           Navigator.push(
                 context,
            MaterialPageRoute(builder: (context) => const RetrievePasswordScreen()),
          );
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
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