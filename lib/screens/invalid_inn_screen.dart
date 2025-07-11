import 'package:flutter/material.dart';

import 'inn_input_screen.dart';

class InvalidInnScreen extends StatelessWidget {
  const InvalidInnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: FractionallySizedBox(
              widthFactor: 1.5,
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
                const SizedBox(height: 150),

                Image.asset('assets/icons/find.png'),

                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      const SizedBox(height: 40),

                      const Text(
                        'НЕВЕРНЫЙ ИНН',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'по указаному номеру не',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'найдено ни одной УК',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 40),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InnInputScreen(),
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