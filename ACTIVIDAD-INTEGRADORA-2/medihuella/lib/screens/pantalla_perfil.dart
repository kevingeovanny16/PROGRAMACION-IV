import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  Widget crearTarjetaDato({
    required IconData icono,
    required String titulo,
    required String valor,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: const Color(0xFFDDEFEA),
              child: Icon(
                icono,
                color: const Color(0xFF2E7D6E),
                size: 22,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    valor,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D6E),
        foregroundColor: Colors.white,
        title: const Text(
          'Perfil de Max',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 55,
                    backgroundColor: Color(0xFFDDEFEA),
                    child: FaIcon(
                      FontAwesomeIcons.dog,
                      size: 55,
                      color: Color(0xFF2E7D6E),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Max',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Golden Retriever',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDDEFEA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xFF2E7D6E),
                          size: 18,
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Estado estable',
                          style: TextStyle(
                            color: Color(0xFF2E7D6E),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            'Información general',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          crearTarjetaDato(
            icono: Icons.pets,
            titulo: 'Especie',
            valor: 'Perro',
          ),

          crearTarjetaDato(
            icono: Icons.male,
            titulo: 'Sexo',
            valor: 'Macho',
          ),

          crearTarjetaDato(
            icono: Icons.cake_outlined,
            titulo: 'Edad',
            valor: '2 años',
          ),

          crearTarjetaDato(
            icono: Icons.monitor_weight_outlined,
            titulo: 'Peso',
            valor: '27.5 kg',
          ),

          crearTarjetaDato(
            icono: Icons.badge_outlined,
            titulo: 'Raza',
            valor: 'Golden Retriever',
          ),

          const Divider(height: 35),

          const Text(
            'Ficha de salud',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFEAF5F2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.badge_outlined,
                      color: Color(0xFF2E7D6E),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Ficha MediHuella: MH-001',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF36554F),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Divider(),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.health_and_safety_outlined,
                      color: Color(0xFF2E7D6E),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Vacunas y controles veterinarios registrados en MediHuella.',
                        style: TextStyle(
                          color: Color(0xFF36554F),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}