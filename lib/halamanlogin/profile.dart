import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FF),
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF5B5FEF),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 500,
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.all(30),
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
              const CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xFFE8E7FF),
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Color(0xFF5B5FEF),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'ANAQITA CAHYANA',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF25254A),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Mahasiswa Teknik Informatika',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 25),

              profileItem(
                Icons.email_outlined,
                'Email',
                'anaqita@gmail',
              ),

              profileItem(
                Icons.school_outlined,
                'Program Studi',
                'Teknik Informatika',
              ),

              profileItem(
                Icons.code_rounded,
                'Interest',
                'Programming & Technology',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileItem(
    IconData icon,
    String title,
    String value,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8FF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFF5B5FEF),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}