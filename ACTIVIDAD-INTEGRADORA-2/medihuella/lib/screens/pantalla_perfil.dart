import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D6E),
        foregroundColor: Colors.white,
        title: const Text('Perfil de Max'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xFFDDEFEA),
              child: FaIcon(
                FontAwesomeIcons.dog,
                size: 55,
                color: Color(0xFF2E7D6E),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Max',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              'Golden Retriever',
              style: TextStyle(fontSize: 17, color: Colors.black54),
            ),
            SizedBox(height: 4),
            Text('2 años • 27.5 kg', style: TextStyle(color: Colors.black54)),
          ],
        ),
      ),
    );
  }
}
