import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secure_pay/presentation/password_change_success/password_change_success.dart';

class ChangePasswordScreen extends StatelessWidget {
  static const routeName = '/change-password';

  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // Decorative shape at the top right
              // Positioned(
              //   top: 0,
              //   right: 0,
              //   child: Container(
              //     width: 150,
              //     height: 150,
              //     decoration: const BoxDecoration(
              //       color: Colors.blue, // Adjust color as needed
              //       borderRadius: BorderRadius.only(
              //         bottomLeft: Radius.circular(100.0),
              //       ),
              //     ),
              //   ),
              // ),
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset(
                  'assets/images/rounded_vector.svg',
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.15,
                  // fit: BoxFit.cover,
                ),
              ),

              // Main content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60.0), // Space from the top
                    // Logo
                    SvgPicture.asset(
                      'assets/images/securepay_logo.svg', // Ensure this path is correct
                      width: 120,
                    ),

                    const SizedBox(height: 20.0),

                    // Title
                    const Text(
                      'Change Password',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 8.0),

                    // Subtitle
                    const Text(
                      'Get New Password?',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black54,
                      ),
                    ),

                    const SizedBox(height: 40.0),

                    // New Password TextField
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'New Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      obscureText: true,
                    ),

                    const SizedBox(height: 20.0),

                    // Confirm New Password TextField
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Confirm New Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      obscureText: true,
                    ),

                    const SizedBox(height: 40.0),

                    // Continue Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                        horizontal: 80.0, vertical: 15.0),
                        backgroundColor:const Color.fromARGB(255, 9, 9, 165),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ), // Button color
                      ),
                      onPressed: () {
                        // Add functionality for password reset success message here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PasswordChangedScreen()),
                        );
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 16.0,
                        color: Colors.white)
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
