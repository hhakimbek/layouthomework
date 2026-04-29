import 'package:flutter/material.dart';

class MyCalculator extends StatelessWidget {
  const MyCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    const accent = Color(0xFFF37352);
    const textDark = Color(0xFF2E2E2E);

    return Scaffold(
      backgroundColor: const Color(0xFFF1F1F1),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: accent,
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Center(
                    child: Text(
                      'Calculator',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '28',
                      style: TextStyle(
                        fontSize: 84,
                        height: 1,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '161 - 133',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'History',
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '56 + 789',
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(34, 28, 34, 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _keyRow(['C', '()', '%', '/'], accent, textDark),
                    _keyRow(['7', '8', '9', 'x'], accent, textDark),
                    _keyRow(['4', '5', '6', '-'], accent, textDark),
                    _keyRow(['1', '2', '3', '+'], accent, textDark),
                    _keyRow(['+/-', '0', '.', '='], accent, textDark),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _keyRow(List<String> keys, Color accent, Color textDark) {
    return Row(
      children: keys
          .map(
            (key) => Expanded(
          child: Center(
            child: Text(
              key,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w300,
                color: key == 'C' || key == '=' ? accent : textDark,
              ),
            ),
          ),
        ),
      )
          .toList(),
    );
  }
}
