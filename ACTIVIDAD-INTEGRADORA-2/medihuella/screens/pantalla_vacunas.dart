import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medihuella/widgets/tarjeta_vacuna.dart';

class PantallaVacunas extends StatelessWidget {
  const PantallaVacunas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D6E),
        foregroundColor: Colors.white,
        title: const Text(
          'Vacunas',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F3FF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: FaIcon(
                    FontAwesomeIcons.syringe,
                    color: Color(0xFF3976B8),
                    size: 24,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Control de vacunación',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Consulta las vacunas aplicadas y los próximos refuerzos de Max.',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            'Historial de vacunas',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          const TarjetaVacuna(
            nombre: 'Rabia',
            fecha: '15/02/2026',
            descripcion: 'Vacuna antirrábica anual.',
            aplicada: true,
          ),

          const TarjetaVacuna(
            nombre: 'Múltiple canina',
            fecha: '10/11/2025',
            descripcion: 'Protección contra enfermedades virales comunes.',
            aplicada: true,
          ),

          const Divider(height: 32),

          const Text(
            'Próxima vacuna',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          const TarjetaVacuna(
            nombre: 'Refuerzo anual',
            fecha: '15/02/2027',
            descripcion: 'Próximo refuerzo de vacunación programado.',
            aplicada: false,
          ),

          const SizedBox(height: 15),

          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: const Color(0xFFEAF5F2),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Row(
              children: [
                Icon(Icons.info_outline, color: Color(0xFF2E7D6E)),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Mantener las vacunas al día ayuda a proteger la salud de tu mascota.',
                    style: TextStyle(color: Color(0xFF36554F)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
