import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secure_pay/presentation/onboarding_screen/onboarding.dart';

class SecurePayApp extends StatelessWidget {
  const SecurePayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SecurePayWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SecurePayWidget extends StatefulWidget {
  const SecurePayWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SecurePayWidgetState createState() => _SecurePayWidgetState();
}

class _SecurePayWidgetState extends State<SecurePayWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
    _animationController.forward().then((_) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const AuthScreen()),
      );
    });

    _animation = Tween<double>(begin: 1.0, end: 0.8).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildAnimatedImage() {
    return ScaleTransition(
      scale: _animation,
      child: SvgPicture.asset(
        'assets/images/securepay_logo.svg',
        width: 200,
        height: 200,
        package: 'secure_pay',
        semanticsLabel: 'securepay logo',  
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.blue,
          onPrimary: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
      ),
      home: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              _buildAnimatedImage(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
