import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = [
      ('Joe Belfiore', 'In a world far away'),
      ('Bill Gates', 'What i\'m doing here?'),
      ('Mark Zuckerberg', 'Really Busy, WhatsApp only'),
      ('Marissa Mayer', 'In a rush to catch a plane'),
      ('Sundar Pichai', 'Do androids dream of electric sheep?'),
      ('Jeff Bezos', 'Counting Zeroes : Prime time.'),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
                child: Row(
                  children: const [
                    Icon(Icons.menu, color: Color(0xFFB9B9B9), size: 24),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Contacts',
                          style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF454545),
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.search, color: Color(0xFFC8C8C8), size: 24),
                  ],
                ),
              ),
              const Divider(height: 1, color: Color(0xFFEDEDED)),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  itemCount: contacts.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 2),
                  itemBuilder: (context, index) {
                    final item = contacts[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.person_alt_circle_fill,
                            size: 62,
                            color: Color(0xFFEAEAEA),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.$1,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF333333),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  item.$2,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}