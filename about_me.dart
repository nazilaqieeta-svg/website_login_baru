import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FF),
      appBar: AppBar(
        title: const Text(
          'About Me',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF5B5FEF),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 650,
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.all(35),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 15,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.code_rounded,
                size: 70,
                color: Color(0xFF5B5FEF),
              ),

              const SizedBox(height: 20),

              const Text(
                'About KODEVERSITAS',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF25254A),
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'KODEVERSITAS adalah platform pembelajaran '
                'yang dirancang untuk membantu pengguna belajar '
                'pemrograman dan teknologi dengan cara yang lebih '
                'sederhana, menarik, dan interaktif.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 25),

              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0EFFF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.lightbulb_outline,
                      color: Color(0xFF5B5FEF),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Text(
                        'Learn. Create. Innovate.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF25254A),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                'Created for learning project',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}