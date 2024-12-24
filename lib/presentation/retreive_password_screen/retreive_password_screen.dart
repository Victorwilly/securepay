import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secure_pay/presentation/create_new_password_screen/change_new_password.dart';


class RetrievePasswordScreen extends StatelessWidget {
  const RetrievePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
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
                  SvgPicture.asset(
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

                  // Forgot Password Subheading
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.05),

                  // Input Instruction Text
                  Text(
                    'Input 4-Digit Pin sent to your Phone number',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.05),

                  // 4-Digit Pin Input Fields
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) {
                      return Container(
                        width: screenWidth * 0.15,
                        height: screenWidth * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: screenWidth * 0.06,
                              fontWeight: FontWeight.bold,
                            ),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            decoration: const InputDecoration(
                              counterText: '', // Hide counter
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: screenWidth * 0.1),

                  // Continue Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle retrieve password code action
                           Navigator.push(
                 context,
            MaterialPageRoute(builder: (context) => 
            const ChangePasswordScreen()),
          );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:const Color.fromARGB(255, 9, 9, 165),                 padding: EdgeInsets.symmetric(
                          vertical: screenWidth * 0.04,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.02),
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
