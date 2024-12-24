import 'package:flutter/material.dart';
import 'package:secure_pay/presentation/login_screen/login_screen.dart';
import 'package:secure_pay/presentation/terms_and_condition_screen/terms_and_condition_screen.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create Account'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Padding(
          padding: EdgeInsets.all(screenWidth * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               //bvn field
               buildTextField('Bank Verification Number (BVN)', screenWidth),
               SizedBox(height: screenHeight * 0.02),

               //NIN field
               buildTextField('National Identification Number (NIN)', screenWidth),
               SizedBox(height: screenHeight * 0.02),

              // Address field
              buildTextField('Address', screenWidth),
              SizedBox(height: screenHeight * 0.02),

              // Checkbox and Terms
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Expanded(
                    child: Text(
                      'I hereby agree with the Terms and Conditions',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => 
                    const TermsAndConditionsPage()),
                  );
                },
                child: Text(
                  'Terms and Conditions*',
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.03),

              // Next Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
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
    );
  }

  Widget buildTextField(String labelText, double screenWidth) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: screenWidth * 0.04,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }
}
