import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:secure_pay/presentation/create_account_screen/create_account_screen.dart';



class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.blue,
          onPrimary: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
      ),
      home: const AuthScreen(),
    );
  }
}

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Set responsive sizes based on screen width
    // final cardWidth = screenWidth * 0.8;
    // final cardHeight = screenHeight * 0.2;
    final textFontSize = screenWidth * 0.07;
    final buttonFontSize = screenWidth * 0.045;
    final padding = screenWidth * 0.05;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image Section
               SvgPicture.asset(
                'assets/images/Credit_card.svg',
                width: screenWidth * 0.6,
                height: screenHeight * 0.25,
              ),          
              SizedBox(height: screenHeight * 0.03),
              // Text Section
              Text(
                "Your Payments\ncan be Secured",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: textFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              
              SizedBox(height: screenHeight * 0.02),
              
              Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: buttonFontSize * 0.9,
                  color: Colors.grey[600],
                  height: 1.5,
                ),
              ),
              
              SizedBox(height: screenHeight * 0.05),
              
              // Get Started Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => 
                      const CreateAccountScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: buttonFontSize,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}