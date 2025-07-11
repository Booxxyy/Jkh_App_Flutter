import 'package:flutter/material.dart';
import 'auth_screen.dart';

class CompanyNotFoundScreen extends StatelessWidget {
  const CompanyNotFoundScreen({super.key});

  static const _topPadding = 90.0;
  static const _sectionSpacing = 40.0;
  static const _smallSpacing = 5.0;
  static const _tinySpacing = 10.0;

  static const _companyNameStyle = TextStyle(
    fontSize: 22,
    color: Colors.white,
  );

  static const _companyIdStyle = TextStyle(
    fontSize: 29,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static const _statusStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w300,
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
                const SizedBox(height: _topPadding),
                Image.asset('assets/icons/notfound.png'),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: _sectionSpacing),
                      const Text(
                        'Управляющая компания',
                        style: _companyNameStyle,
                      ),
                      const SizedBox(height: _smallSpacing),
                      const Text(
                        '6950045219',
                        style: _companyIdStyle,
                      ),
                      const SizedBox(height: _tinySpacing),
                      const Text(
                        'в настоящий момент',
                        style: _statusStyle,
                      ),
                      const Text(
                        'не обслуживается',
                        style: _statusStyle,
                      ),
                      const SizedBox(height: _sectionSpacing),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AuthScreen(),
                            ),
                          );
                        },
                        child: const Text('Назад'),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}