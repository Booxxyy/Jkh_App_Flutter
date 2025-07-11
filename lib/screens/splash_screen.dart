import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_zhkh/screens/inn_input_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InnInputScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/jkh_logo.png', height: 200),
            SizedBox(height: 30),
            Text(
                'Личный кабинет\nсобственника',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                  height: 1,
                )
            ),
            SizedBox(height: 30),
            Text('Версия 1.0'),
            SizedBox(height: 30),
            SizedBox(
              width: 160,
              child: LinearProgressIndicator(),
            ),
            SizedBox(height: 70),
            Image.asset('assets/icons/what_a_soft_logo.png', height: 100,)
          ],
        ),
      ),
    );
  }
}
