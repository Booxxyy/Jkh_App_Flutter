import 'package:flutter/material.dart';
import 'auth_screen.dart';
import 'check_email_screen.dart';
import 'mem.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  bool _isError = false;

  static const _titleStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static const _subtitleStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const _errorStyle = TextStyle(
    color: Colors.red,
    fontSize: 14,
  );

  static const _buttonTextStyle = TextStyle(
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: FractionallySizedBox(
              heightFactor: 1.5,
              alignment: const Alignment(-1, -1),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black38.withOpacity(0.8),
                  BlendMode.darken,
                ),
                child: Image.asset(
                  'assets/images/city.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/password.png',
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 20),
                      const Text('Забыли пароль ?', style: _titleStyle),
                      const SizedBox(height: 15),
                      const Text(
                        'Укажите почту и мы вышлем инструкцию',
                        style: _subtitleStyle,
                      ),
                      const Text(
                        'для восстановления пароля',
                        style: _subtitleStyle,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 280,
                        child: TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Почта',
                            labelStyle: TextStyle(color: Colors.white70),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                        child: Center(
                          child: _isError
                              ? Text(
                            'Неверная почта',
                            style: _errorStyle.copyWith(
                              color: Colors.red[400],
                            ),
                          )
                              : const SizedBox.shrink(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_emailController.text.isEmpty) {
                            setState(() => _isError = true);
                          } else {
                            setState(() => _isError = false);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CheckEmailScreen(),
                              ),
                            );
                          }
                        },
                        child: const Text('Восстановить пароль'),
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
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AuthScreen(),
                            ),
                          );
                        },
                        child: const Text('Войти', style: _buttonTextStyle),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DogScreen(),
                            ),
                          );
                        },
                        child: const Text('Демо-доступ', style: _buttonTextStyle),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}