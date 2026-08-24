import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MediHuellaApp());
}

class MediHuellaApp extends StatelessWidget {
  const MediHuellaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediHuella',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D6E),
        ),
        useMaterial3: true,
      ),
      home: const InicioPage(),
    );
  }
}

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D6E),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'MediHuella',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: const Color(0xFFDDEFEA),
                  borderRadius: BorderRadius.circular(65),
                ),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.paw,
                    size: 65,
                    color: Color(0xFF2E7D6E),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'MediHuella',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF263238),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'La información de salud de tu mascota\nsiempre contigo.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 30),
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Color(0xFF2E7D6E),
                        size: 30,
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          'Un espacio pensado para organizar el cuidado de tus mascotas.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}