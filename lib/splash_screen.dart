import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://i2.wp.com/www.tictactoeshop.com/wp-content/uploads/2018/06/logo_black.png?fit=500%2C315&ssl=1',
        ),
      ),
    );
  }
}
