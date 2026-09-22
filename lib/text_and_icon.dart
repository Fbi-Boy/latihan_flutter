import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kartu Profil Digital',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kartu Profil Digital'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Fabi Faharudin Faiz',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.school,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}