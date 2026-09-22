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
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kartu Profil Digital'),
      ),
      body: Center(
        child: Card(
          elevation: 8,
          child: SizedBox(
            width: 340,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 140,
                      color: Colors.blue,
                    ),

                    Positioned(
                      bottom: -50,
                      left: 120,
                      child: ClipOval(
                        child: Image.network(
                          'https://picsum.photos/200',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 60),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'Fabi Faharudin Faiz',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'Mahasiswa Teknik Informatika',
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.email),
                              label: const Text('Email'),
                            ),
                          ),

                          const SizedBox(width: 10),

                          Flexible(
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.phone),
                              label: const Text('Telepon'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}