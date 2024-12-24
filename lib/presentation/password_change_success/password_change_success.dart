import 'package:flutter/material.dart';
import 'package:secure_pay/presentation/login_screen/login_screen.dart';


class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Success Icon
               Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1), // Light blue background
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check,
                  size: 60,
                  color: Colors.blue,
                ),
              ),

              const SizedBox(height: 20.0),

              // Success Message
              const Text(
                'Your Password has been\nSuccessfully Changed',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 30.0),

              // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 9, 9, 165),  // Button color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  // Navigate to Login screen or perform relevant action
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 16.0,
                  color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
