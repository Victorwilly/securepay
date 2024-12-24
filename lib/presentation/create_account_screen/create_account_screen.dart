import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secure_pay/presentation/create_new_account_screen/create_new_account_screen.dart';
import 'package:secure_pay/presentation/login_screen/login_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final textFontSize = screenWidth * 0.05;
    final fieldFontSize = screenWidth * 0.045;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
          child: Stack(
            children: [
              // Top right image decoration
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset(
                  'assets/images/rounded_vector.svg',
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.15,
                  fit: BoxFit.cover,
                ),
              ),
              

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * 0.05),
                  // Logo and illustration
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "securepay",
                          style: TextStyle(
                            fontSize: screenWidth * 0.1,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        Icon(
                          Icons.lock,
                          color: Colors.blue,
                          size: screenWidth * 0.05,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.04),

                  // Title and Login link
                  Text(
                    "Create your account",
                    style: TextStyle(
                      fontSize: textFontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Have an account? ",
                        style: TextStyle(
                          fontSize: fieldFontSize,
                          color: Colors.grey[700],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle tap, e.g., navigate to login screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                fontSize: fieldFontSize,
                                color: Colors.blue,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: fieldFontSize,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: screenHeight * 0.03),

                  // Input fields
                  const CustomTextField(label: "Full name"),
                  const CustomTextField(label: "Email address"),
                  const CustomTextField(label: "Phone number"),
                  const CustomTextField(label: "Nationality"),
                  const CustomTextField(label: "State of Origin"),
                  const CustomTextField(label: "Password", isPassword: true),
                  const CustomTextField(
                      label: "Confirm Password", isPassword: true),

                  SizedBox(height: screenHeight * 0.05),

                  // Next Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                            // Handle tap, e.g., navigate to CreateAccountPage screen
                  Navigator.push(
                 context,
            MaterialPageRoute(builder: (context) => const CreateAccountPage()),
          );
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: textFontSize,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isPassword;

  const CustomTextField(
      {super.key, required this.label, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: screenWidth * 0.05),
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey[700]),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
