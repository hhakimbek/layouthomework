import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  static const _operators = {'+', '-', 'x', '/', '%'};

  String _expression = '';
  String _result = '0';

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
                children: [
                  const Center(
                    child: Text(
                      'Calculator',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      _result,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 84,
                        height: 1,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      _expression.isEmpty ? '0' : _expression,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
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
                        '',
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
          child: TextButton(
            onPressed: () => _onKeyPressed(key),
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
        ),
      )
          .toList(),
    );
  }

  void _onKeyPressed(String key) {
    setState(() {
      if (key == 'C') {
        _expression = '';
        _result = '0';
        return;
      }

      if (key == '()') {
        return;
      }

      if (key == '+/-') {
        _toggleLastNumberSign();
        return;
      }

      if (key == '=') {
        _calculate();
        return;
      }

      if (_operators.contains(key)) {
        if (_expression.isEmpty) return;
        final last = _expression[_expression.length - 1];
        if (_operators.contains(last)) {
          _expression = _expression.substring(0, _expression.length - 1) + key;
        } else {
          _expression += key;
        }
        return;
      }

      if (key == '.') {
        if (_currentNumberHasDot()) return;
        if (_expression.isEmpty || _operators.contains(_expression[_expression.length - 1])) {
          _expression += '0.';
        } else {
          _expression += '.';
        }
        return;
      }

      _expression += key;
    });
  }

  void _calculate() {
    if (_expression.isEmpty) return;
    if (_operators.contains(_expression[_expression.length - 1])) {
      _expression = _expression.substring(0, _expression.length - 1);
    }

    if (_expression.isEmpty) return;

    try {
      final value = _evaluateExpression(_expression);
      _result = _formatNumber(value);
    } catch (_) {
      _result = 'Error';
    }
  }

  bool _currentNumberHasDot() {
    for (int i = _expression.length - 1; i >= 0; i--) {
      final ch = _expression[i];
      if (_operators.contains(ch)) return false;
      if (ch == '.') return true;
    }
    return false;
  }

  void _toggleLastNumberSign() {
    if (_expression.isEmpty) {
      _expression = '-';
      return;
    }

    int opIndex = -1;
    for (int i = _expression.length - 1; i >= 0; i--) {
      if (_operators.contains(_expression[i])) {
        opIndex = i;
        break;
      }
    }

    final number = _expression.substring(opIndex + 1);
    if (number.isEmpty) {
      _expression += '-';
      return;
    }

    if (number.startsWith('-')) {
      _expression = _expression.substring(0, opIndex + 1) + number.substring(1);
    } else {
      _expression = _expression.substring(0, opIndex + 1) + '-$number';
    }
  }

  double _evaluateExpression(String expr) {
    final tokens = <String>[];
    String current = '';

    for (int i = 0; i < expr.length; i++) {
      final ch = expr[i];
      if (_operators.contains(ch)) {
        final isUnaryMinus = ch == '-' && (i == 0 || _operators.contains(expr[i - 1]));
        if (isUnaryMinus) {
          current += ch;
          continue;
        }

        if (current.isNotEmpty) tokens.add(current);
        tokens.add(ch);
        current = '';
      } else {
        current += ch;
      }
    }

    if (current.isNotEmpty) tokens.add(current);

    final collapsed = <String>[];
    int i = 0;
    while (i < tokens.length) {
      final token = tokens[i];
      if (token == 'x' || token == '/' || token == '%') {
        final left = double.parse(collapsed.removeLast());
        final right = double.parse(tokens[i + 1]);
        double value;
        if (token == 'x') {
          value = left * right;
        } else if (token == '/') {
          value = left / right;
        } else {
          value = left % right;
        }
        collapsed.add(value.toString());
        i += 2;
      } else {
        collapsed.add(token);
        i++;
      }
    }

    double result = double.parse(collapsed[0]);
    i = 1;
    while (i < collapsed.length) {
      final op = collapsed[i];
      final value = double.parse(collapsed[i + 1]);
      if (op == '+') {
        result += value;
      } else if (op == '-') {
        result -= value;
      }
      i += 2;
    }

    return result;
  }

  String _formatNumber(double value) {
    if (value % 1 == 0) return value.toInt().toString();
    return value.toString();
  }
}

