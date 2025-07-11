import 'package:flutter/material.dart';
import 'auth_screen.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

  static const _titleStyle = TextStyle(
    fontSize: 29,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static const _subtitleStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Фон
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black38.withOpacity(0.8),
              BlendMode.darken,
            ),
            child: Image.asset(
              'assets/images/city.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Основной контент
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icons/email.png', height: 120),
                  const SizedBox(height: 40),
                  const Text('Проверьте почту', style: _titleStyle),
                  const SizedBox(height: 10),
                  const Text(
                    'Мы отправили письмо с инструкцией',
                    style: _subtitleStyle,
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'для восстановления пароля',
                    style: _subtitleStyle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AuthScreen(),
                        ),
                      );
                    },
                    child: const Text('Войти'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.indigoAccent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
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
