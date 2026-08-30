import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medihuella/widgets/tarjeta_control.dart';

class PantallaControles extends StatelessWidget {
  const PantallaControles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D6E),
        foregroundColor: Colors.white,
        title: const Text(
          'Controles veterinarios',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color(0xFFF2EAFB),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: FaIcon(
                    FontAwesomeIcons.stethoscope,
                    color: Color(0xFF7955A5),
                    size: 24,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Seguimiento veterinario',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Consulta los chequeos realizados y los próximos controles de Max.',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            'Historial de controles',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          TarjetaControl(
            titulo: 'Control general',
            fecha: DateTime(2026, 7, 20),
            veterinario: 'Dr. Carlos Mendoza',
            descripcion:
                'Chequeo general. Max presenta un buen estado de salud.',
            realizado: true,
          ),

          TarjetaControl(
            titulo: 'Control de peso',
            fecha: DateTime(2026, 4, 18),
            veterinario: 'Dra. Andrea López',
            descripcion:
                'Peso registrado: 27.5 kg. Se recomienda mantener su alimentación.',
            realizado: true,
          ),

          const Divider(height: 32),

          const Text(
            'Próximo control',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          TarjetaControl(
            titulo: 'Chequeo preventivo',
            fecha: DateTime(2026, 10, 20),
            veterinario: 'Veterinario por confirmar',
            descripcion:
                'Control preventivo para revisar el estado general de Max.',
            realizado: false,
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
                Icon(
                  Icons.health_and_safety_outlined,
                  color: Color(0xFF2E7D6E),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Los controles periódicos ayudan a detectar a tiempo cambios en la salud de tu mascota.',
                    style: TextStyle(
                      color: Color(0xFF36554F),
                    ),
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
