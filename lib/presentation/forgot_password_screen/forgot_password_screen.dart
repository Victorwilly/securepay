import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secure_pay/presentation/login_screen/login_screen.dart';

class RetrievePasswordScreen extends StatelessWidget {
  const RetrievePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Top-right Decorative Circle Image
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/images/rounded_vector.svg',
              width: screenWidth * 0.4, // Adjust width for responsiveness
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.1,
                vertical: screenWidth * 0.1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenWidth * 0.1),

                  // Logo Image
                  Image.asset(
                    'assets/images/securepay_logo.svg',
                    width: screenWidth * 0.5,
                  ),

                  SizedBox(height: screenWidth * 0.05),

                  // Retrieve Password Heading
                  Text(
                    'Retrieve Password',
                    style: TextStyle(
                      fontSize: screenWidth * 0.07,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.02),

                  // Subheading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Remember password? ',
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to Login Screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: const Color(0xFF0038FF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenWidth * 0.05),

                  // Input Phone Number Field
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Input Phone number',
                      labelStyle: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.black,
                      ),
                      border: const OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: screenWidth * 0.04,
                        horizontal: screenWidth * 0.04,
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: screenWidth * 0.1),

                  // Continue Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle Continue Action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0038FF),
                        padding: EdgeInsets.symmetric(
                          vertical: screenWidth * 0.04,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.02),
                        ),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
    );
  }
}
