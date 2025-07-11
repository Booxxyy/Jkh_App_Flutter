import 'package:flutter/material.dart';
import 'company_not_found_screen.dart';
import 'forgot_password_screen.dart';
import 'mem.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isError = false;

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
                Image.asset('assets/icons/auth.png'),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Авторизация',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'ООО "ДОМИУМ СЕРВИС"',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'введите учётные данные',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),

                      SizedBox(
                        width: 280,
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Почта',
                            labelStyle: const TextStyle(color: Colors.white70),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),

                      SizedBox(
                        width: 280,
                        child: TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'Пароль',
                            labelStyle: const TextStyle(color: Colors.white70),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                          obscureText: true,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),

                      SizedBox(
                        height: 24,
                        child: Center(
                          child: _isError
                              ? Text(
                            'Неверная почта или пароль',
                            style: TextStyle(
                              color: Colors.red[400],
                              fontSize: 14,
                            ),
                          )
                              : const SizedBox.shrink(),
                        ),
                      ),

                      const SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: () {
                          if (_emailController.text == 'admin' &&
                              _passwordController.text == 'admin') {
                            setState(() => _isError = false);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CompanyNotFoundScreen(),
                              ),
                            );
                          } else {
                            setState(() => _isError = true);
                          }
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

                      const SizedBox(height: 10),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Забыли пароль?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DogScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Демо-доступ',
                          style: TextStyle(color: Colors.white),
                        ),
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