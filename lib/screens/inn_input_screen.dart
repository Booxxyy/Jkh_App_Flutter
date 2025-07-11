import 'package:flutter/material.dart';
import 'auth_screen.dart';
import 'invalid_inn_screen.dart';

class InnInputScreen extends StatefulWidget {
  const InnInputScreen({super.key});

  @override
  State<InnInputScreen> createState() => _InnInputScreenState();
}

class _InnInputScreenState extends State<InnInputScreen> {

  static const _titleStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const _subtitleStyle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const _innLabelStyle = TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const _buttonTextStyle = TextStyle(
    color: Colors.white,
  );

  static const _topPadding = 80.0;
  static const _sectionSpacing = 20.0;
  static const _largeSpacing = 40.0;
  static const _mediumSpacing = 20.0;
  static const _bottomSpacing = 60.0;

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
                _buildQrButton(),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: _sectionSpacing),
                      const Text(
                        'Отсканируйте QR-Код',
                        style: _titleStyle,
                      ),
                      const Text(
                        'из личного кабинета сайта для входа',
                        style: _subtitleStyle,
                      ),
                      const SizedBox(height: _largeSpacing),
                      const Text(
                        'или введите ИНН',
                        style: _innLabelStyle,
                      ),
                      const Text(
                        'управляющей компании',
                        style: _innLabelStyle,
                      ),
                      const SizedBox(height: _mediumSpacing),
                      _buildInnInputField(),
                      const SizedBox(height: _bottomSpacing),
                      _buildNextButton(),
                      _buildDemoAccessButton(),
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

  Widget _buildQrButton() {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => debugPrint('QR-кнопка нажата'),
        borderRadius: BorderRadius.circular(75),
        splashColor: Colors.white.withOpacity(0.3),
        highlightColor: Colors.white.withOpacity(0.1),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
            boxShadow: [
            BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: const Offset(0, 9),
            )],
          ),
          child: const Icon(
            Icons.qr_code_scanner,
            size: 80,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildInnInputField() {
    return SizedBox(
      width: 280,
      child: TextField(
        decoration: const InputDecoration(
          labelText: 'ИНН',
          labelStyle: TextStyle(color: Colors.white70),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white70),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        keyboardType: TextInputType.number,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildNextButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const InvalidInnScreen(),
          ),
        );
      },
      child: const Text('Далее'),
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
    );
  }

  Widget _buildDemoAccessButton() {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AuthScreen(),
          ),
        );
      },
      child: const Text(
        'Демо-доступ',
        style: _buttonTextStyle,
      ),
    );
  }
}