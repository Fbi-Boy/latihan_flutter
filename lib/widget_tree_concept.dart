import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Tree',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget Tree'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.person,
                size: 50,
              ),
              const Text(
                'Fabi Faharudin Faiz',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 200,
                height: 80,
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: const Text('Profile Card'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}