import 'package:flutter/material.dart';

class CounterScreenBody extends StatefulWidget {
  const CounterScreenBody({super.key});

  @override
  State<CounterScreenBody> createState() => _CounterScreenBodyState();
}

class _CounterScreenBodyState extends State<CounterScreenBody> {
  int count = 20;
  final int limit = 8;

  @override
  Widget build(BuildContext context) {
    final int remain = limit - count;
    final bool reached = remain <= 0;

    return Scaffold(
      body: Container(
        color: const Color(0xFF0A0D14),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              children: [
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Icon(Icons.info, color: Color(0xFFDCE3F3), size: 20),
                    SizedBox(width: 22),
                    Icon(Icons.settings, color: Color(0xFFDCE3F3), size: 20),
                    SizedBox(width: 22),
                    IconButton(
                      onPressed: (){
                        setState(() {
                          count = 0;
                        });
                      },
                      icon: Icon(Icons.refresh, color: Color(0xFFDCE3F3), size: 20),
                    )
                  ],
                ),
                const Spacer(),
                Text(
                  '$count',
                  style: const TextStyle(
                    fontSize: 140,
                    color: Color(0xFFDCE3F3),
                    fontWeight: FontWeight.w300,
                    height: 0.9,
                  ),
                ),
                const Spacer(),
                Text(
                  '$remain',
                  style: const TextStyle(
                    fontSize: 42,
                    color: Color(0xFFDCE3F3),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  reached ? 'LIMIT REACHED' : 'LIMIT LEFT',
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 2,
                    color: reached
                        ? const Color(0xFF8E95A5)
                        : const Color(0xFF6D7382),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _CircleBtn(
                      icon: Icons.remove,
                      onTap: () => setState(() => count--),
                    ),
                    _CircleBtn(
                      icon: Icons.add,
                      onTap: () => setState(() => count++),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CircleBtn extends StatelessWidget {
  const _CircleBtn({
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: 66,
        height: 66,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFF3C4250), width: 1),
        ),
        child: Icon(icon, color: const Color(0xFFDCE3F3), size: 36),
      ),
    );
  }
}
