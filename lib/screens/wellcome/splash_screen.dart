import 'package:flutter/material.dart';
import 'package:memo_app/utils/colors/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), ()  {
       Navigator.pushNamed(context, '/onboarding_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors().blue,
              AppColors().purple,
            ],
          ),
        ),
        child: const Center(
          child: Image(
            image: AssetImage('assets/images/splash.png'),
          ),
        ),
      ),
    );
  }
}
