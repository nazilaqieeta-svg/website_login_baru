import 'package:flutter/material.dart';
import 'halamanlogin/login.dart';

void main() {
  runApp(const KodeversitasApp());
}

class KodeversitasApp extends StatelessWidget {
  const KodeversitasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kodeversitas',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}