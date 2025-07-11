import 'package:flutter/material.dart';

class DogScreen extends StatelessWidget {
  const DogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/dog.gif'),
            Text('Технические работы', style: TextStyle( color: Colors.black))
          ],
        ),
      ),
    );
  }
}